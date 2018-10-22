# eevee assembler

## Usage

assembler:

    $ make
    $ ./main hoge.s  # `hoge` will be generated

tests:

    $ make test
    $ ./test

## Notes
* `sample` : RISC-V Toolchainのgccを使って生成した実際のRISC-Vのアセンブリと元のCプログラム(64bit命令がある・・・)

* `target` : eevee用のアセンブリ(`sample`のコードを元に手動で少し変えたりしたもの)

## Available pseudoinstructions(順次増やす予定)
* `la`
* `li`, `mv`, `neg`
* `j`, `jr`, `ret`, `call`

## TODOs
- [ ] テストを増やす(?)
- [ ] 浮動小数点用の命令への対応(?)
- [ ] RISC-V pseudoinstructionへの対応(`call`など)

## 備忘録
* ファイルの先頭の

    .file	"fib.c"
    .option nopic
    .text
    .align	1
    .globl	fib
    .type	fib, @function

  ここらへんの情報はとりあえず全部読み飛ばしている(コンパイラの実装次第では対処が必要になりそう)

* immediate valueは10進数と解釈することにした
