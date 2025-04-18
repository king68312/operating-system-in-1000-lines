typedef unsigned char uint8_t;
typedef unsigned int uint32_t;
typedef uint32_t size_t;

extern char __bss[], __bss_end[], __stack_top[];

struct sbiret sbi_call(long arg0, long arg1, long arg2, long arg3, long arg4, long arg5, long fid, long eid){
  register long a0 __asm__("a0") = arg0;//指定したレジスタに値を入れる
  register long a1 __asm__("a1") = arg1;
  register long a0 __asm__("a0") = arg0;
  register long a0 __asm__("a0") = arg0;
}

