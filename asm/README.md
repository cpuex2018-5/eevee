# eevee assembler

## Usage

### assembler

    $ make
    $ ./main [-a] [-v | -d] hoge.s  # `hoge.bin` will be generated

#### option

* `-v` : verbose mode (アセンブリの入力とそれを変換したバイナリ、pcの値をstdoutに表示)

```
$ ./main -v target/fib.s
(pc 0):	addi	sp,sp,-8
1111 1111 1000 0001 0000 0001 0001 0011

(pc 1):	sw	ra,4(sp)
    0000 0000 0001 0001 0010 0010 0010 0011

(pc 2):	sw	fp,0(sp)
    0000 0000 1000 0001 0010 0000 0010 0011

(pc 3):	addi	fp,sp,8        # fp: old stack pointer
    0000 0000 1000 0001 0000 0100 0001 0011

(pc 4):	li	a0,4
    0000 0000 0100 0000 0000 0101 0001 0011

(pc 5):	call	fib
    0000 0000 0000 0000 0000 0011 0001 0111     0000 0001 1100 0011 0000 0000 1110 0111

(pc 7):	mv	a5,a0
    0000 0000 0000 0101 0000 0111 1001 0011
```

* `-d` : debug mode (pcの値を先頭につけたアセンブリをstdoutに表示)

```
$ ./main -d target/fib.s
	_min_caml_start: # main entry point
(   0)		addi	sp, sp, -8
(   4)		sw	ra, 4(sp)
(   8)		sw	fp, 0(sp)
(  12)		addi	fp, sp, 8
	#	main program starts
(  16)		li	a0, 3
(  20)		call	fib.10
	#	main program ends
(  28)		lw	ra, 4(sp)
(  32)		lw	fp, 0(sp)
(  36)		addi	sp, sp, 8
(  40)		jal	zero, end
```

* `-a` : ascii mode (バイナリファイルではなく`0`, `1`でのASCIIファイルを出力する, vivadoのシミュレーション用)
    * `-v`, `-d` と併用可能

### tests:

    $ make test
    $ ./test

## Notes
* `sample` : RISC-V Toolchainのgccを使って生成した実際のRISC-Vのアセンブリと元のCプログラム(64bit命令がある・・・)

* `target` : eevee用のアセンブリ(`sample`のコードを元に手動で少し変えたりしたもの)

* `min-caml-asm`: min-camlで吐いたアセンブリ

* `libtest` : libmincaml.Sのテスト用のアセンブリ

## Available pseudoinstructions(順次増やす予定)
* `la`
* `li`, `mv`, `neg`
* `bge`, `ble`
* `j`, `jr`, `ret`, `call`
* `b` : 無条件にbranch
    * `b offset` = `bge zero, zero, offset`

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

* pseudo-instruction `li` の挙動を修正した(即値が大きい場合は2命令になる)

* 吐き出すバイナリファイルに拡張子 `.bin` をつけるようにしました

### I/O命令について

* `w` (write), `r` (read)。命令フォーマットは以下。

```
|32              15|14  12|11   7|6     0|
|000000000000000000|funct3|  reg | opcode|
|000000000000000000| 000  |  rs  |1111111| w (write)
|000000000000000000| 001  |  rd  |1111111| r (read)
```

* `w    rs` : `rs`の内容の下位8bitをuartに送信する
* `r    rd` : uartから受信した8bitを`rd`に入れる
