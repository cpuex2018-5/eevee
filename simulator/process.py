import re
import os
sim_data = open('data.txt','r')
asm_data = open('asm_verbose.txt','r')
t_data = open('processed.txt','w')
pat = '.*:[^ ]+:'
pattern = re.compile(pat)
labels={}
for i in asm_data:
    result = re.match(pattern,i)
    if result != None:
        match_str = result.group()
        pc = match_str.split(':')[0].split(' ')[1][:-1]
        label = match_str.split(":")[1]
        labels[pc] = label

for i in sim_data:
    pc = i.split(' ')[1]
    l = labels.get(str(pc))
    if l!=None:
        #print("Found",pc,l)
        t_data.write('{0:<40}  {1}'.format(l,i.split(' ')[3]))

t_data.close()
sim_data.close()
asm_data.close()

