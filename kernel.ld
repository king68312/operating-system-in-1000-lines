ENTRY(boot)#entry point


SECTIONS {
  . = 0x80200000; #base address

  .text :{#コード領域
    KEEP(*(.text.boot));
    *(.text .text.*);#*全ファイル中の.textと.textで始まる名前のセクションを配置する。
  }

  .rodata : ALIGN(4) {#定数データ領域。読み取り専用。
    *(.rodata .rodata.*);
  }

  .data : ALIGN(4) {#読み書き可能データ領域。
    *(.data .data.*);
  } 
    
  .bss : ALIGN(4) {#読み書き可能データ領域。初期値が零の変数を配置する。
    __bss = .;
    *(.bbs .bss.* .sbss .sbss.*);
    __bss_end = .;
  }
  
  . = ALIGN(4);
  . += 128 * 1024; /* 128KB */
  __stack_top = .;
}
