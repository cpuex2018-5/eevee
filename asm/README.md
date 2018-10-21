# eevee assembler

## Usage

assembler:

    $ make
    $ ./main hoge.s  # `hoge` will be generated

tests:

    $ make test
    $ ./test

## Notes
* `sample/` : RISC_-V Toolchainのgccを使って生成した実際のRISC-Vのアセンブリと元のCプログラム(64bit命令がある・・・)

## Available pseudoinstructions(順次増やす予定)
* `ret`, `call`, `la`
* `li`, `mv`, `neg`

## TODOs
- [ ] テストを増やす(?)
- [ ] 浮動小数点用の命令への対応(?)
- [ ] RISC-V pseudoinstructionへの対応(`call`など)

## Memo
* ファイルの先頭の
    .file	"fib.c"
    .option nopic
    .text
    .align	1
    .globl	fib
    .type	fib, @function
  ここらへんの情報はとりあえず全部読み飛ばしている(コンパイラの実装次第では対処が必要になりそう)
