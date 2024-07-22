filepath = 'hex.txt'
reading_file = open(filepath,"r")
cnt = 128
for line in reading_file:
    stripped_line = line.strip()
    print("uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(" + hex(cnt) + ",0x" + stripped_line + ");")
#    print("mwr -force 0x40000010 " + hex(cnt));
#    print("mwr -force 0x40000018 0x" + stripped_line);
#    print("mwr -force 0x40000040 0x1");
#    print("mwr -force 0x40000000 0x1");
#    print("");
    cnt += 4
