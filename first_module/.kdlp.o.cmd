savedcmd_kdlp.o := riscv64-linux-gnu-gcc -Wp,-MMD,./.kdlp.o.d -nostdinc -I/home/peter_meas/linux/arch/riscv/include -I/home/peter_meas/linux/arch/riscv/include/generated -I/home/peter_meas/linux/include -I/home/peter_meas/linux/include -I/home/peter_meas/linux/arch/riscv/include/uapi -I/home/peter_meas/linux/arch/riscv/include/generated/uapi -I/home/peter_meas/linux/include/uapi -I/home/peter_meas/linux/include/generated/uapi -include /home/peter_meas/linux/include/linux/compiler-version.h -include /home/peter_meas/linux/include/linux/kconfig.h -include /home/peter_meas/linux/include/linux/compiler_types.h -D__KERNEL__ -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mabi=lp64 -march=rv64ima_zicsr_zifencei_zacas_zabha -mno-save-restore -mcmodel=medany -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-riscv-attribute -Wa,-mno-arch-attr -mstrict-align -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fno-stack-protector -fomit-frame-pointer -ftrivial-auto-var-init=zero -fzero-init-padding-bits=all -fno-stack-clash-protection -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-dangling-pointer -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-unterminated-string-initialization -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -g -gdwarf-5  -DMODULE -mno-relax  -DKBUILD_BASENAME='"kdlp"' -DKBUILD_MODNAME='"kdlp"' -D__KBUILD_MODNAME=kmod_kdlp -c -o kdlp.o kdlp.c  

source_kdlp.o := kdlp.c

deps_kdlp.o := \
  /home/peter_meas/linux/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/peter_meas/linux/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/peter_meas/linux/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/UBSAN_INTEGER_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/peter_meas/linux/include/linux/compiler_attributes.h \
  /home/peter_meas/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /home/peter_meas/linux/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/peter_meas/linux/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /home/peter_meas/linux/include/linux/container_of.h \
  /home/peter_meas/linux/include/linux/build_bug.h \
  /home/peter_meas/linux/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/CFI_CLANG) \
    $(wildcard include/config/64BIT) \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/rwonce.h \
  /home/peter_meas/linux/include/asm-generic/rwonce.h \
  /home/peter_meas/linux/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/peter_meas/linux/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/peter_meas/linux/include/uapi/linux/types.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/types.h \
  /home/peter_meas/linux/include/uapi/asm-generic/types.h \
  /home/peter_meas/linux/include/asm-generic/int-ll64.h \
  /home/peter_meas/linux/include/uapi/asm-generic/int-ll64.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/bitsperlong.h \
  /home/peter_meas/linux/include/asm-generic/bitsperlong.h \
  /home/peter_meas/linux/include/uapi/asm-generic/bitsperlong.h \
  /home/peter_meas/linux/include/uapi/linux/posix_types.h \
  /home/peter_meas/linux/include/linux/stddef.h \
  /home/peter_meas/linux/include/uapi/linux/stddef.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/posix_types.h \
  /home/peter_meas/linux/include/uapi/asm-generic/posix_types.h \
  /home/peter_meas/linux/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/peter_meas/linux/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/peter_meas/linux/include/linux/const.h \
  /home/peter_meas/linux/include/vdso/const.h \
  /home/peter_meas/linux/include/uapi/linux/const.h \
  /home/peter_meas/linux/arch/riscv/include/asm/barrier.h \
    $(wildcard include/config/RISCV_ISA_ZAWRS) \
  /home/peter_meas/linux/arch/riscv/include/asm/cmpxchg.h \
    $(wildcard include/config/RISCV_ISA_ZABHA) \
    $(wildcard include/config/RISCV_ISA_ZACAS) \
  /home/peter_meas/linux/include/linux/bug.h \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/peter_meas/linux/arch/riscv/include/asm/bug.h \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/peter_meas/linux/arch/riscv/include/asm/asm.h \
    $(wildcard include/config/32BIT) \
  /home/peter_meas/linux/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
  /home/peter_meas/linux/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /home/peter_meas/linux/include/linux/once_lite.h \
  /home/peter_meas/linux/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/peter_meas/linux/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /home/peter_meas/linux/include/linux/stdarg.h \
  /home/peter_meas/linux/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /home/peter_meas/linux/include/linux/stringify.h \
  /home/peter_meas/linux/include/linux/kern_levels.h \
  /home/peter_meas/linux/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/peter_meas/linux/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /home/peter_meas/linux/arch/riscv/include/asm/linkage.h \
  /home/peter_meas/linux/include/linux/ratelimit_types.h \
  /home/peter_meas/linux/include/linux/bits.h \
  /home/peter_meas/linux/include/vdso/bits.h \
  /home/peter_meas/linux/include/uapi/linux/bits.h \
  /home/peter_meas/linux/include/linux/overflow.h \
  /home/peter_meas/linux/include/linux/limits.h \
  /home/peter_meas/linux/include/uapi/linux/limits.h \
  /home/peter_meas/linux/include/vdso/limits.h \
  /home/peter_meas/linux/include/uapi/linux/param.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/param.h \
  /home/peter_meas/linux/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/peter_meas/linux/include/uapi/asm-generic/param.h \
  /home/peter_meas/linux/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/peter_meas/linux/include/linux/spinlock_types_up.h \
  /home/peter_meas/linux/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/peter_meas/linux/arch/riscv/include/asm/alternative-macros.h \
    $(wildcard include/config/RISCV_ALTERNATIVE) \
    $(wildcard include/config/k) \
    $(wildcard include/config/k_1) \
    $(wildcard include/config/k_2) \
  /home/peter_meas/linux/arch/riscv/include/asm/fence.h \
  /home/peter_meas/linux/arch/riscv/include/asm/hwcap.h \
    $(wildcard include/config/RISCV_M_MODE) \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/hwcap.h \
  /home/peter_meas/linux/arch/riscv/include/asm/insn-def.h \
    $(wildcard include/config/AS_HAS_INSN) \
  /home/peter_meas/linux/arch/riscv/include/asm/cpufeature-macros.h \
  /home/peter_meas/linux/arch/riscv/include/asm/processor.h \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/RISCV_ISA_ZICBOP) \
    $(wildcard include/config/RISCV_ISA_V) \
    $(wildcard include/config/RISCV_ISA_SUPM) \
  /home/peter_meas/linux/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/peter_meas/linux/include/uapi/linux/kernel.h \
  /home/peter_meas/linux/include/uapi/linux/sysinfo.h \
  /home/peter_meas/linux/include/vdso/cache.h \
  /home/peter_meas/linux/arch/riscv/include/asm/cache.h \
    $(wildcard include/config/RISCV_DMA_NONCOHERENT) \
  /home/peter_meas/linux/include/uapi/linux/prctl.h \
  /home/peter_meas/linux/include/vdso/processor.h \
  /home/peter_meas/linux/arch/riscv/include/asm/vdso/processor.h \
  /home/peter_meas/linux/arch/riscv/include/asm/ptrace.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/ptrace.h \
  /home/peter_meas/linux/arch/riscv/include/asm/csr.h \
  /home/peter_meas/linux/include/asm-generic/barrier.h \
  /home/peter_meas/linux/include/linux/stat.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/stat.h \
  /home/peter_meas/linux/include/uapi/asm-generic/stat.h \
  /home/peter_meas/linux/include/uapi/linux/stat.h \
  /home/peter_meas/linux/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/peter_meas/linux/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/peter_meas/linux/include/linux/math.h \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/div64.h \
  /home/peter_meas/linux/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /home/peter_meas/linux/include/vdso/math64.h \
  /home/peter_meas/linux/include/linux/time64.h \
  /home/peter_meas/linux/include/vdso/time64.h \
  /home/peter_meas/linux/include/uapi/linux/time.h \
  /home/peter_meas/linux/include/uapi/linux/time_types.h \
  /home/peter_meas/linux/include/linux/time32.h \
  /home/peter_meas/linux/include/linux/timex.h \
  /home/peter_meas/linux/include/uapi/linux/timex.h \
  /home/peter_meas/linux/arch/riscv/include/asm/timex.h \
  /home/peter_meas/linux/include/vdso/time32.h \
  /home/peter_meas/linux/include/vdso/time.h \
  /home/peter_meas/linux/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/peter_meas/linux/include/linux/uidgid_types.h \
  /home/peter_meas/linux/include/linux/highuid.h \
  /home/peter_meas/linux/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /home/peter_meas/linux/include/linux/kmod.h \
  /home/peter_meas/linux/include/linux/umh.h \
  /home/peter_meas/linux/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/peter_meas/linux/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /home/peter_meas/linux/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/SPARSEMEM) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/peter_meas/linux/include/linux/spinlock.h \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_RT) \
  /home/peter_meas/linux/include/linux/typecheck.h \
  /home/peter_meas/linux/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /home/peter_meas/linux/include/linux/cleanup.h \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/preempt.h \
  /home/peter_meas/linux/include/asm-generic/preempt.h \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
  /home/peter_meas/linux/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /home/peter_meas/linux/include/linux/restart_block.h \
  /home/peter_meas/linux/include/linux/errno.h \
  /home/peter_meas/linux/include/uapi/linux/errno.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/errno.h \
  /home/peter_meas/linux/include/uapi/asm-generic/errno.h \
  /home/peter_meas/linux/include/uapi/asm-generic/errno-base.h \
  /home/peter_meas/linux/arch/riscv/include/asm/current.h \
  /home/peter_meas/linux/include/linux/bitops.h \
  /home/peter_meas/linux/include/asm-generic/bitops/generic-non-atomic.h \
  /home/peter_meas/linux/arch/riscv/include/asm/bitops.h \
    $(wildcard include/config/RISCV_ISA_ZBB) \
    $(wildcard include/config/TOOLCHAIN_HAS_ZBB) \
  /home/peter_meas/linux/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/peter_meas/linux/include/linux/irqflags_types.h \
  /home/peter_meas/linux/arch/riscv/include/asm/irqflags.h \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/percpu.h \
  /home/peter_meas/linux/include/asm-generic/percpu.h \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/peter_meas/linux/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /home/peter_meas/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/peter_meas/linux/include/asm-generic/bitops/__ffs.h \
  /home/peter_meas/linux/include/asm-generic/bitops/__fls.h \
  /home/peter_meas/linux/include/asm-generic/bitops/ffs.h \
  /home/peter_meas/linux/include/asm-generic/bitops/fls.h \
  /home/peter_meas/linux/include/asm-generic/bitops/ffz.h \
  /home/peter_meas/linux/include/asm-generic/bitops/fls64.h \
  /home/peter_meas/linux/include/asm-generic/bitops/sched.h \
  /home/peter_meas/linux/arch/riscv/include/asm/arch_hweight.h \
  /home/peter_meas/linux/include/asm-generic/bitops/const_hweight.h \
  /home/peter_meas/linux/include/asm-generic/bitops/instrumented-atomic.h \
  /home/peter_meas/linux/include/linux/instrumented.h \
  /home/peter_meas/linux/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /home/peter_meas/linux/include/asm-generic/bitops/instrumented-lock.h \
  /home/peter_meas/linux/include/asm-generic/bitops/non-atomic.h \
  /home/peter_meas/linux/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /home/peter_meas/linux/include/asm-generic/bitops/le.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/byteorder.h \
  /home/peter_meas/linux/include/linux/byteorder/little_endian.h \
  /home/peter_meas/linux/include/uapi/linux/byteorder/little_endian.h \
  /home/peter_meas/linux/include/linux/swab.h \
  /home/peter_meas/linux/include/uapi/linux/swab.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/swab.h \
  /home/peter_meas/linux/include/uapi/asm-generic/swab.h \
  /home/peter_meas/linux/include/linux/byteorder/generic.h \
  /home/peter_meas/linux/include/asm-generic/bitops/ext2-atomic.h \
  /home/peter_meas/linux/arch/riscv/include/asm/thread_info.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/THREAD_SIZE_ORDER) \
    $(wildcard include/config/VMAP_STACK) \
  /home/peter_meas/linux/arch/riscv/include/asm/page.h \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/RISCV_ISA_ZICBOZ) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /home/peter_meas/linux/include/linux/pfn.h \
  /home/peter_meas/linux/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /home/peter_meas/linux/include/asm-generic/memory_model.h \
  /home/peter_meas/linux/include/asm-generic/getorder.h \
  /home/peter_meas/linux/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/peter_meas/linux/include/linux/sizes.h \
  /home/peter_meas/linux/include/linux/bottom_half.h \
  /home/peter_meas/linux/include/linux/instruction_pointer.h \
  /home/peter_meas/linux/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/peter_meas/linux/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /home/peter_meas/linux/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/peter_meas/linux/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
  /home/peter_meas/linux/include/linux/align.h \
  /home/peter_meas/linux/include/vdso/align.h \
  /home/peter_meas/linux/include/linux/array_size.h \
  /home/peter_meas/linux/include/linux/hex.h \
  /home/peter_meas/linux/include/linux/kstrtox.h \
  /home/peter_meas/linux/include/linux/minmax.h \
  /home/peter_meas/linux/include/linux/sprintf.h \
  /home/peter_meas/linux/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/peter_meas/linux/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /home/peter_meas/linux/include/linux/wordpart.h \
  /home/peter_meas/linux/include/linux/bitmap.h \
  /home/peter_meas/linux/include/linux/find.h \
  /home/peter_meas/linux/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/peter_meas/linux/include/linux/args.h \
  /home/peter_meas/linux/include/linux/err.h \
  /home/peter_meas/linux/include/uapi/linux/string.h \
  /home/peter_meas/linux/arch/riscv/include/asm/string.h \
  /home/peter_meas/linux/include/linux/bitmap-str.h \
  /home/peter_meas/linux/include/linux/cpumask_types.h \
  /home/peter_meas/linux/include/linux/atomic.h \
  /home/peter_meas/linux/arch/riscv/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /home/peter_meas/linux/include/linux/atomic/atomic-arch-fallback.h \
  /home/peter_meas/linux/include/linux/atomic/atomic-long.h \
  /home/peter_meas/linux/include/linux/atomic/atomic-instrumented.h \
  /home/peter_meas/linux/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/peter_meas/linux/include/linux/nodemask.h \
  /home/peter_meas/linux/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /home/peter_meas/linux/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/peter_meas/linux/include/uapi/linux/random.h \
  /home/peter_meas/linux/include/uapi/linux/ioctl.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/ioctl.h \
  /home/peter_meas/linux/include/asm-generic/ioctl.h \
  /home/peter_meas/linux/include/uapi/asm-generic/ioctl.h \
  /home/peter_meas/linux/include/linux/irqnr.h \
  /home/peter_meas/linux/include/uapi/linux/irqnr.h \
  /home/peter_meas/linux/include/linux/smp_types.h \
  /home/peter_meas/linux/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/peter_meas/linux/arch/riscv/include/asm/mmiowb.h \
  /home/peter_meas/linux/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/peter_meas/linux/include/linux/spinlock_types.h \
  /home/peter_meas/linux/include/linux/rwlock_types.h \
  /home/peter_meas/linux/include/linux/spinlock_up.h \
  /home/peter_meas/linux/include/linux/rwlock.h \
  /home/peter_meas/linux/include/linux/spinlock_api_up.h \
  /home/peter_meas/linux/include/linux/list_nulls.h \
  /home/peter_meas/linux/include/linux/wait.h \
  /home/peter_meas/linux/include/linux/seqlock.h \
  /home/peter_meas/linux/include/linux/mutex.h \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /home/peter_meas/linux/include/linux/osq_lock.h \
  /home/peter_meas/linux/include/linux/debug_locks.h \
  /home/peter_meas/linux/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/peter_meas/linux/include/linux/seqlock_types.h \
  /home/peter_meas/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/peter_meas/linux/include/linux/page-flags-layout.h \
  /home/peter_meas/linux/include/generated/bounds.h \
  /home/peter_meas/linux/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/FUTEX_PRIVATE_HASH) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/peter_meas/linux/include/linux/mm_types_task.h \
  /home/peter_meas/linux/arch/riscv/include/asm/tlbbatch.h \
  /home/peter_meas/linux/include/linux/auxvec.h \
  /home/peter_meas/linux/include/uapi/linux/auxvec.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/auxvec.h \
  /home/peter_meas/linux/include/linux/kref.h \
  /home/peter_meas/linux/include/linux/refcount.h \
  /home/peter_meas/linux/include/linux/refcount_types.h \
  /home/peter_meas/linux/include/linux/rbtree.h \
  /home/peter_meas/linux/include/linux/rbtree_types.h \
  /home/peter_meas/linux/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/peter_meas/linux/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/peter_meas/linux/include/linux/rcutiny.h \
  /home/peter_meas/linux/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/peter_meas/linux/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/peter_meas/linux/include/linux/completion.h \
  /home/peter_meas/linux/include/linux/swait.h \
  /home/peter_meas/linux/include/linux/uprobes.h \
    $(wildcard include/config/UPROBES) \
  /home/peter_meas/linux/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /home/peter_meas/linux/include/linux/ktime.h \
  /home/peter_meas/linux/include/linux/jiffies.h \
  /home/peter_meas/linux/include/vdso/jiffies.h \
  /home/peter_meas/linux/include/generated/timeconst.h \
  /home/peter_meas/linux/include/vdso/ktime.h \
  /home/peter_meas/linux/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/peter_meas/linux/include/linux/clocksource_ids.h \
  /home/peter_meas/linux/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/peter_meas/linux/include/linux/timer_types.h \
  /home/peter_meas/linux/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/peter_meas/linux/include/linux/workqueue_types.h \
  /home/peter_meas/linux/include/linux/percpu_counter.h \
  /home/peter_meas/linux/include/linux/percpu.h \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/peter_meas/linux/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /home/peter_meas/linux/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /home/peter_meas/linux/include/linux/static_key.h \
  /home/peter_meas/linux/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/peter_meas/linux/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/peter_meas/linux/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/DEBUG_RSEQ) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /home/peter_meas/linux/include/uapi/linux/sched.h \
  /home/peter_meas/linux/include/linux/pid_types.h \
  /home/peter_meas/linux/include/linux/sem_types.h \
  /home/peter_meas/linux/include/linux/shm.h \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/shmparam.h \
  /home/peter_meas/linux/include/asm-generic/shmparam.h \
  /home/peter_meas/linux/include/linux/kmsan_types.h \
  /home/peter_meas/linux/include/linux/plist_types.h \
  /home/peter_meas/linux/include/linux/hrtimer_types.h \
  /home/peter_meas/linux/include/linux/timerqueue_types.h \
  /home/peter_meas/linux/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /home/peter_meas/linux/include/linux/resource.h \
  /home/peter_meas/linux/include/uapi/linux/resource.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/resource.h \
  /home/peter_meas/linux/include/asm-generic/resource.h \
  /home/peter_meas/linux/include/uapi/asm-generic/resource.h \
  /home/peter_meas/linux/include/linux/latencytop.h \
  /home/peter_meas/linux/include/linux/sched/prio.h \
  /home/peter_meas/linux/include/linux/sched/types.h \
  /home/peter_meas/linux/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/peter_meas/linux/include/uapi/linux/signal.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/signal.h \
  /home/peter_meas/linux/include/asm-generic/signal.h \
  /home/peter_meas/linux/include/uapi/asm-generic/signal.h \
  /home/peter_meas/linux/include/uapi/asm-generic/signal-defs.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/sigcontext.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/siginfo.h \
  /home/peter_meas/linux/include/uapi/asm-generic/siginfo.h \
  /home/peter_meas/linux/include/linux/syscall_user_dispatch_types.h \
  /home/peter_meas/linux/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /home/peter_meas/linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/peter_meas/linux/include/linux/posix-timers_types.h \
  /home/peter_meas/linux/include/uapi/linux/rseq.h \
  /home/peter_meas/linux/include/linux/kcsan.h \
  /home/peter_meas/linux/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /home/peter_meas/linux/include/linux/tracepoint-defs.h \
  /home/peter_meas/linux/arch/riscv/include/generated/asm/kmap_size.h \
  /home/peter_meas/linux/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/peter_meas/linux/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /home/peter_meas/linux/arch/riscv/include/asm/mmu.h \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
  /home/peter_meas/linux/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /home/peter_meas/linux/include/linux/local_lock.h \
  /home/peter_meas/linux/include/linux/local_lock_internal.h \
  /home/peter_meas/linux/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /home/peter_meas/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/peter_meas/linux/include/linux/notifier.h \
  /home/peter_meas/linux/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /home/peter_meas/linux/include/linux/rcu_segcblist.h \
  /home/peter_meas/linux/include/linux/srcutiny.h \
  /home/peter_meas/linux/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/peter_meas/linux/include/linux/arch_topology.h \
  /home/peter_meas/linux/arch/riscv/include/asm/topology.h \
  /home/peter_meas/linux/include/asm-generic/topology.h \
  /home/peter_meas/linux/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/peter_meas/linux/include/uapi/linux/sysctl.h \
  /home/peter_meas/linux/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/peter_meas/linux/arch/riscv/include/asm/elf.h \
  /home/peter_meas/linux/include/uapi/linux/elf.h \
  /home/peter_meas/linux/include/uapi/linux/elf-em.h \
  /home/peter_meas/linux/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/X86_X32_ABI) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /home/peter_meas/linux/include/linux/sem.h \
  /home/peter_meas/linux/include/uapi/linux/sem.h \
  /home/peter_meas/linux/include/linux/ipc.h \
  /home/peter_meas/linux/include/linux/rhashtable-types.h \
  /home/peter_meas/linux/include/uapi/linux/ipc.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/ipcbuf.h \
  /home/peter_meas/linux/include/uapi/asm-generic/ipcbuf.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/sembuf.h \
  /home/peter_meas/linux/include/uapi/asm-generic/sembuf.h \
  /home/peter_meas/linux/include/linux/socket.h \
    $(wildcard include/config/PROC_FS) \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/socket.h \
  /home/peter_meas/linux/include/uapi/asm-generic/socket.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/sockios.h \
  /home/peter_meas/linux/include/uapi/asm-generic/sockios.h \
  /home/peter_meas/linux/include/uapi/linux/sockios.h \
  /home/peter_meas/linux/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /home/peter_meas/linux/include/linux/ucopysize.h \
    $(wildcard include/config/HARDENED_USERCOPY_DEFAULT_ON) \
  /home/peter_meas/linux/include/uapi/linux/uio.h \
  /home/peter_meas/linux/include/uapi/linux/socket.h \
  /home/peter_meas/linux/include/uapi/linux/if.h \
  /home/peter_meas/linux/include/uapi/linux/libc-compat.h \
  /home/peter_meas/linux/include/uapi/linux/hdlc/ioctl.h \
  /home/peter_meas/linux/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /home/peter_meas/linux/include/linux/vfsdebug.h \
    $(wildcard include/config/DEBUG_VFS) \
  /home/peter_meas/linux/include/linux/wait_bit.h \
  /home/peter_meas/linux/include/linux/kdev_t.h \
  /home/peter_meas/linux/include/uapi/linux/kdev_t.h \
  /home/peter_meas/linux/include/linux/dcache.h \
  /home/peter_meas/linux/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/peter_meas/linux/include/linux/rculist_bl.h \
  /home/peter_meas/linux/include/linux/list_bl.h \
  /home/peter_meas/linux/include/linux/bit_spinlock.h \
  /home/peter_meas/linux/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/peter_meas/linux/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/peter_meas/linux/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/peter_meas/linux/include/linux/path.h \
  /home/peter_meas/linux/include/linux/list_lru.h \
  /home/peter_meas/linux/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /home/peter_meas/linux/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/peter_meas/linux/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/peter_meas/linux/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /home/peter_meas/linux/arch/riscv/include/asm/sync_core.h \
  /home/peter_meas/linux/include/linux/sched/coredump.h \
  /home/peter_meas/linux/include/linux/radix-tree.h \
  /home/peter_meas/linux/include/linux/pid.h \
  /home/peter_meas/linux/include/linux/capability.h \
  /home/peter_meas/linux/include/uapi/linux/capability.h \
  /home/peter_meas/linux/include/linux/semaphore.h \
  /home/peter_meas/linux/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/peter_meas/linux/include/uapi/linux/fcntl.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/fcntl.h \
  /home/peter_meas/linux/include/uapi/asm-generic/fcntl.h \
  /home/peter_meas/linux/include/uapi/linux/openat2.h \
  /home/peter_meas/linux/include/linux/migrate_mode.h \
  /home/peter_meas/linux/include/linux/percpu-rwsem.h \
  /home/peter_meas/linux/include/linux/rcuwait.h \
  /home/peter_meas/linux/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /home/peter_meas/linux/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /home/peter_meas/linux/include/linux/sched/jobctl.h \
  /home/peter_meas/linux/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/peter_meas/linux/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /home/peter_meas/linux/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/peter_meas/linux/include/linux/nospec.h \
  /home/peter_meas/linux/arch/riscv/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
  /home/peter_meas/linux/arch/riscv/include/asm/asm-extable.h \
  /home/peter_meas/linux/arch/riscv/include/asm/gpr-num.h \
  /home/peter_meas/linux/arch/riscv/include/asm/cpufeature.h \
    $(wildcard include/config/RISCV_SCALAR_MISALIGNED) \
    $(wildcard include/config/RISCV_MISALIGNED) \
    $(wildcard include/config/RISCV_VECTOR_MISALIGNED) \
    $(wildcard include/config/RISCV_PROBE_UNALIGNED_ACCESS) \
  /home/peter_meas/linux/arch/riscv/include/asm/pgtable.h \
    $(wildcard include/config/RELOCATABLE) \
    $(wildcard include/config/PHYS_RAM_BASE) \
    $(wildcard include/config/XIP_PHYS_ADDR) \
    $(wildcard include/config/RISCV_ISA_SVNAPOT) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
  /home/peter_meas/linux/arch/riscv/include/asm/pgtable-bits.h \
  /home/peter_meas/linux/arch/riscv/include/asm/tlbflush.h \
  /home/peter_meas/linux/arch/riscv/include/asm/smp.h \
  /home/peter_meas/linux/include/linux/irqreturn.h \
  /home/peter_meas/linux/arch/riscv/include/asm/errata_list.h \
    $(wildcard include/config/ERRATA_ANDES) \
    $(wildcard include/config/ERRATA_SIFIVE) \
    $(wildcard include/config/ERRATA_THEAD) \
    $(wildcard include/config/ERRATA_SIFIVE_CIP_453) \
    $(wildcard include/config/ERRATA_SIFIVE_CIP_1200) \
    $(wildcard include/config/RISCV_ISA_SVPBMT) \
    $(wildcard include/config/ERRATA_THEAD_MAE) \
    $(wildcard include/config/RISCV_ISA_ZICBOM) \
  /home/peter_meas/linux/arch/riscv/include/asm/alternative.h \
  /home/peter_meas/linux/arch/riscv/include/asm/vendorid_list.h \
  /home/peter_meas/linux/arch/riscv/include/asm/compat.h \
  /home/peter_meas/linux/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /home/peter_meas/linux/arch/riscv/include/asm/pgtable-64.h \
  /home/peter_meas/linux/include/linux/page_table_check.h \
  /home/peter_meas/linux/arch/riscv/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
    $(wildcard include/config/ARCH_RV64I) \
  /home/peter_meas/linux/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /home/peter_meas/linux/include/linux/cred.h \
  /home/peter_meas/linux/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/peter_meas/linux/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/peter_meas/linux/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/peter_meas/linux/include/linux/ratelimit.h \
  /home/peter_meas/linux/include/linux/posix-timers.h \
  /home/peter_meas/linux/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/peter_meas/linux/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/peter_meas/linux/include/linux/hrtimer_defs.h \
  /home/peter_meas/linux/include/linux/timerqueue.h \
  /home/peter_meas/linux/include/linux/rcuref.h \
  /home/peter_meas/linux/include/linux/rcu_sync.h \
  /home/peter_meas/linux/include/linux/delayed_call.h \
  /home/peter_meas/linux/include/linux/uuid.h \
  /home/peter_meas/linux/include/linux/errseq.h \
  /home/peter_meas/linux/include/linux/ioprio.h \
  /home/peter_meas/linux/include/linux/sched/rt.h \
  /home/peter_meas/linux/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /home/peter_meas/linux/include/uapi/linux/ioprio.h \
  /home/peter_meas/linux/include/linux/fs_types.h \
  /home/peter_meas/linux/include/linux/mount.h \
  /home/peter_meas/linux/include/linux/mnt_idmapping.h \
  /home/peter_meas/linux/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_BUCKETS) \
    $(wildcard include/config/KVFREE_RCU_BATCHED) \
  /home/peter_meas/linux/include/linux/percpu-refcount.h \
  /home/peter_meas/linux/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/peter_meas/linux/include/linux/kasan-enabled.h \
  /home/peter_meas/linux/include/linux/kasan-tags.h \
  /home/peter_meas/linux/include/linux/rw_hint.h \
  /home/peter_meas/linux/include/linux/file_ref.h \
  /home/peter_meas/linux/include/linux/unicode.h \
  /home/peter_meas/linux/include/uapi/linux/fs.h \
  /home/peter_meas/linux/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/peter_meas/linux/include/uapi/linux/dqblk_xfs.h \
  /home/peter_meas/linux/include/linux/dqblk_v1.h \
  /home/peter_meas/linux/include/linux/dqblk_v2.h \
  /home/peter_meas/linux/include/linux/dqblk_qtree.h \
  /home/peter_meas/linux/include/linux/projid.h \
  /home/peter_meas/linux/include/uapi/linux/quota.h \
  /home/peter_meas/linux/include/uapi/linux/aio_abi.h \
  /home/peter_meas/linux/include/uapi/linux/unistd.h \
  /home/peter_meas/linux/arch/riscv/include/asm/unistd.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/unistd.h \
  /home/peter_meas/linux/arch/riscv/include/generated/uapi/asm/unistd_64.h \
  /home/peter_meas/linux/arch/riscv/include/asm/syscall_wrapper.h \
  /home/peter_meas/linux/arch/riscv/include/uapi/asm/elf.h \
  /home/peter_meas/linux/arch/riscv/include/asm/cacheinfo.h \
  /home/peter_meas/linux/include/linux/cacheinfo.h \
    $(wildcard include/config/ACPI_PPTT) \
    $(wildcard include/config/ARM) \
    $(wildcard include/config/ARCH_HAS_CPU_CACHE_ALIASING) \
  /home/peter_meas/linux/include/linux/cpuhplock.h \
  /home/peter_meas/linux/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/peter_meas/linux/include/linux/sysfs.h \
  /home/peter_meas/linux/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/peter_meas/linux/include/linux/idr.h \
  /home/peter_meas/linux/include/linux/kobject_ns.h \
  /home/peter_meas/linux/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /home/peter_meas/linux/include/linux/rbtree_latch.h \
  /home/peter_meas/linux/include/linux/error-injection.h \
  /home/peter_meas/linux/include/asm-generic/error-injection.h \
  /home/peter_meas/linux/include/linux/dynamic_debug.h \
  /home/peter_meas/linux/arch/riscv/include/asm/module.h \
    $(wildcard include/config/MODULE_SECTIONS) \
  /home/peter_meas/linux/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
  /home/peter_meas/linux/include/linux/proc_fs.h \
    $(wildcard include/config/PROC_PID_ARCH_STATUS) \
  /home/peter_meas/linux/include/linux/seq_file.h \
  /home/peter_meas/linux/include/linux/string_helpers.h \
  /home/peter_meas/linux/include/linux/ctype.h \
  /home/peter_meas/linux/include/linux/string_choices.h \

kdlp.o: $(deps_kdlp.o)

$(deps_kdlp.o):
