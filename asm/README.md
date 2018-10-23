# eevee assembler

## Usage

### assembler

    $ make
    $ ./main hoge.s  # `hoge` will be generated

#### option

* verbose mode : アセンブリの入力とそれを変換したバイナリ、pcの値を表示

```
$ ./main -v target/fib.s
(pc 0): 	addi	sp,sp,-8
1111 1111 1000 0001 0000 0001 0001 0011

(pc 1): 	sw	ra,4(sp)
    0000 0000 0001 0001 0010 0010 0010 0011

(pc 2): 	sw	fp,0(sp)
    0000 0000 1000 0001 0010 0000 0010 0011

(pc 3): 	addi	fp,sp,8        # fp: old stack pointer
    0000 0000 1000 0001 0000 0100 0001 0011

(pc 4): 	li	a0,4
    0000 0000 0100 0000 0000 0101 0001 0011

(pc 5): 	call	fib
    0000 0000 0000 0000 0000 0011 0001 0111     0000 0001 1100 0011 0000 0000 1110 0111

(pc 7): 	mv	a5,a0
    0000 0000 0000 0101 0000 0111 1001 0011
```

### tests:

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
- [x] RISC-V pseudoinstructionへの対応(`call`など)

## 備忘録
* ファイルの先頭の

```
.file    "fib.c"
.option  nopic
.text
.align   1
.globl   fib
.type    fib, @function
```

  ここらへんの情報はとりあえず全部読み飛ばしている(コンパイラの実装次第では対処が必要になりそう)

* immediate valueは10進数と解釈することにした
