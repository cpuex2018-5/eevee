import struct
code=open("code.bin",'ab')

def bin2int(n):
    return int(n,2)

with open('code.txt','r') as f:
    for row in f:
        lst = list(map(bin2int,row.split(' ')))
        for i in lst:
            code.write(struct.pack('c',i.to_bytes(1,'big')))
