# eevee assembler

## Usage

assembler:

    $ make
    $ ./main hoge.s  # `hoge` will be generated

tests:

    $ make test
    $ ./test

## Notes
* `sample/` : RISC_-V Toolchainのgccを使って生成した実際のRISC-Vのアセンブリと元のCプログラム

## Available pseudoinstructions
* `ret`
* `call`
* `la`

## TODOs
- [ ] テストを増やす(?)
- [ ] 浮動小数点用の命令への対応(?)
- [ ] RISC-V pseudoinstructionへの対応(`call`など)
