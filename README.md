# RISC-V Linux Kernel Development Projects

A collection of systems programming projects exploring Linux kernel internals on the RISC-V architecture. Features custom system calls, kernel modules, page table introspection, and a POSIX-like shell implementation—all built from scratch.

![Linux](https://img.shields.io/badge/Linux-6.16-blue) ![RISC-V](https://img.shields.io/badge/RISC--V-64bit-green) ![Architecture](https://img.shields.io/badge/Paging-Sv57-orange)

> **Academic Context**: These projects were developed as part of kernel development coursework at UMass Lowell (Fall 2025). The code demonstrates core OS concepts but is educational in nature.

## Technical Stack

- **Architecture**: RISC-V 64-bit (Sv57 5-level paging)
- **Kernel**: Linux 6.16 (custom patches)
- **Toolchain**: `riscv64-linux-gnu-gcc` 15.2.1
- **Emulation**: QEMU system emulator
- **C Library**: uClibc (custom sysroot)
- **Testing**: TAP (Test Anything Protocol)

## Projects Overview

### 🖥️ Custom Shell Implementation
A minimal POSIX-like shell built using low-level system calls—no standard shell libraries.

**Key Features**:
- Process management via raw `clone()` syscall with `CLONE_VFORK`
- Pipeline support for command chaining (`cmd1 | cmd2 | cmd3`)
- I/O redirection (`<`, `>`)
- `PATH` resolution for executables
- Built-in commands: `exit`, `cd`, `exec`

**Technical Highlights**:
- Manual file descriptor juggling for pipes
- Proper fd cleanup to avoid leaks
- Coordinated multi-process execution with wait semantics

```bash
/ ls | grep txt | wc -l
```

**Location**: `shell/`

---

### 🔧 Kernel Module: /proc Entry
A loadable kernel module that creates a `/proc/kdlp` virtual file.

**Implementation**:
- Uses `proc_create_single()` API with `seq_file` interface
- Read-only interface (0444 permissions)
- Returns fixed message on read operations
- Clean resource management on module unload

**Test Coverage**:
- File permissions and ownership validation
- Content verification
- Seek operation testing
- EOF handling
- All tests follow TAP format

**Location**: `first_module/`

---

### ⚙️ Custom System Call
Added a new system call (`sys_kdlp`) to the Linux kernel—syscall number 468.

**Prototype**:
```c
long sys_kdlp(char __user *buffer, size_t size);
```

**What It Does**:
- Retrieves current task name via `get_task_comm()`
- Formats message: "Peter Meas is running [task]"
- Returns message to userspace buffer
- Proper error handling for invalid pointers

**Components**:
- Kernel patch modifying syscall tables and headers
- RISC-V assembly wrapper for userspace invocation
- Test program demonstrating usage
- Works on both original and patched kernels

**Assembly Wrapper**:
```asm
li a7, __NR_kdlp    # Load syscall number into a7
ecall               # Trap to kernel
ret                 # Return result in a0
```

**Location**: `new_syscall/`

---

### 🧠 Page Table Walker
Architecture-specific syscall that walks RISC-V Sv57 page tables and exposes translation information to userspace.

**Syscall**: `sys_riscv_pagetable_walk` (syscall #257)

**Functionality**:
- Reads SATP register to locate root page table
- Walks all 5 levels of Sv57 page tables
- Extracts Virtual Page Numbers (VPN[4:0]) from virtual addresses
- Returns array of PTEs encountered during walk
- Handles huge pages and early termination

**Technical Deep Dive**:
- Direct CSR manipulation (`csr_read(CSR_SATP)`)
- Physical-to-virtual address conversion (`phys_to_virt`)
- PTE flag decoding (V, R, W, X, U, G, A, D)
- Demonstrates W^X memory protection enforcement

**Test Program**:
Tests various memory regions and decodes protection flags:
```
[Code (RX)]   - V=1 R=1 W=0 X=1 (executable, not writable)
[Data (RW)]   - V=1 R=1 W=1 X=0 D=1 (writable, not executable)
[Stack (RW)]  - V=1 R=1 W=1 X=0 D=1 (writable, dirty bit set)
[mmap (R)]    - V=1 R=1 W=0 X=0 (read-only)
```

**Location**: `page_walk/`

---

## Building and Running

### Prerequisites
```bash
# Install RISC-V toolchain
sudo dnf install gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu

# Install QEMU for RISC-V
sudo dnf install qemu-system-riscv
```

### Kernel Setup
```bash
cd ~/linux
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- defconfig
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc)
```

### Running in QEMU
```bash
qemu-system-riscv64 \
    -machine virt \
    -m 128M \
    -kernel arch/riscv/boot/Image \
    -append "console=ttyS0 panic=-1" \
    -nographic \
    -initrd initramfs.cpio.gz
```

### Building Individual Projects
Each project includes a Makefile:
```bash
cd <project_directory>
make
```

For kernel modules:
```bash
cd first_module
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- KDIR=~/linux
```

## Technical Highlights

### Shell Pipeline Coordination
**Challenge**: Managing multiple concurrent processes with proper pipe file descriptor handling across process boundaries.

**Solution**: Used `CLONE_VFORK` for predictable execution order. Each child process:
1. Sets up input redirection from previous pipe (if not first command)
2. Sets up output redirection to next pipe (if not last command)
3. Closes all unused pipe file descriptors
4. Executes command via `execve()`

Parent process closes all pipes and waits for all children sequentially.

### Page Table Walking Logic
**Challenge**: Distinguishing between intermediate page table entries and leaf pages.

**Solution**: Check R/W/X bits—if any are set (bits 1-3), it's a leaf entry. Otherwise, extract PPN and continue walking. This handles both 4KB pages and huge pages (2MB, 1GB).

```c
if (!(_pte & 0x1) || (_pte & 0xE))
    goto copy_out;  // Invalid or leaf page
// Extract next-level PPN and continue...
```

### System Call Integration
**Challenge**: Properly registering syscalls across architecture-specific and common tables while maintaining ABI compatibility.

**Solution**: 
- Modified `scripts/syscall.tbl` for common syscall number
- Added prototype to `include/linux/syscalls.h`
- Updated `include/uapi/asm-generic/unistd.h` 
- Implemented in `kernel/kdlp.c`
- Incremented `__NR_syscalls` count

## What I Learned

1. **The System Call Boundary**: Understanding the kernel-userspace interface isn't just about calling functions—it's about privilege transitions, context switches, and explicit data copying (`copy_to_user`/`copy_from_user`).

2. **Virtual Memory Internals**: Walking page tables manually gave me deep insight into how the MMU translates addresses, how TLBs cache translations, and why huge pages exist.

3. **Process Creation**: The difference between `fork()`, `vfork()`, and `clone()` isn't academic—choosing the wrong one in a shell implementation leads to race conditions and deadlocks.

4. **RISC-V Architecture**: 
   - Privileged spec details (SATP register format, PTE layouts)
   - Calling conventions matter—`a0-a7` for arguments, `a7` for syscall number
   - The elegant simplicity of `ecall` for system calls

5. **Kernel Development Workflow**: 
   - Cross-compilation complexities
   - Debugging without standard tools (printf is your friend)
   - Test-driven development prevents kernel panics

## Testing Methodology

The kernel module was developed with a consistent testing approach:
1. Write detailed specifications first
2. Implement TAP-compliant tests that exercise edge cases
3. Write code to satisfy tests
4. Verify behavior in QEMU environment
5. Document actual vs. expected output

Example test output:
```
1..10
ok 1 - File exists
ok 2 - File is read only
ok 3 - File is owned by user root and group root
...
ok 10 - negative seek position fails
```

## Project Structure

```
.
├── first_module/          # Kernel module creating /proc entry
│   ├── kdlp.c            # Module implementation
│   ├── tests/            # TAP test suite
│   └── *.patch           # Git-formatted patches
├── new_syscall/          # Custom system call implementation
│   ├── kernel.patch      # Kernel modifications
│   ├── kdlp_syscall.S    # RISC-V assembly wrapper
│   ├── test.c            # Userspace test program
│   └── questions.txt     # Analysis questions
├── page_walk/            # Page table walker syscall
│   ├── syscall.patch     # Kernel implementation
│   ├── test_pagetable_walk.c
│   └── testing_output.txt
├── shell/                # Custom shell implementation
│   ├── main.c            # Main loop
│   ├── builtins.c        # Built-in commands
│   ├── executor.c        # Process execution
│   └── utils.c           # Parsing and pipelines
└── setup/                # Initial environment setup
```

## References & Resources

- [RISC-V Privileged Specification v1.12](https://github.com/riscv/riscv-isa-manual)
- [Linux Kernel Documentation: Adding Syscalls](https://www.kernel.org/doc/html/latest/process/adding-syscalls.html)
- [Linux proc_fs and seq_file interfaces](https://www.kernel.org/doc/html/latest/filesystems/seq_file.html)
- OSTEP (Operating Systems: Three Easy Pieces) - Chapters on Process Management and Virtual Memory

## License & Usage

This code is provided for educational purposes. Feel free to reference for learning
For questions or discussions about the implementations, feel free to open an issue.

---

*Exploring OS internals from userspace system call interfaces down to hardware-level virtual memory translation on RISC-V.*
