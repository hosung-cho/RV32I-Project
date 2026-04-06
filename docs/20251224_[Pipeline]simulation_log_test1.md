========================================
RV32I Pipeline CPU Test Starting
================================

=== Cycle 1 ===
  IF:  PC=00000000 | Inst=00a00513
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=0 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=0 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=xxxxxxxx | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 2 ===
  IF:  PC=00000004 | Inst=00000013
  ID:  IFID_inst=00a00513 | rs1=x0 | rs2=x10
       rs1_data=00000000 | rs2_data=xxxxxxxx
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=0 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=0 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=xxxxxxxx | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 3 ===
  IF:  PC=00000008 | Inst=00000013
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x10 | IDEX_rs1=x0 | IDEX_rs2=x10
       IDEX_rs2_data=xxxxxxxx | forwardB=00 | forward_rs2_data=xxxxxxxx
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=0 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=xxxxxxxx | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 4 ===
  IF:  PC=0000000c | Inst=00a02023
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x10 | EXMEM_RegWrite=1 | EXMEM_rs2_data=xxxxxxxx
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=0 | data_addr=0000000a | write_data=xxxxxxxx | ByteEnable=0100
  REG: x10=xxxxxxxx | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 5 ===
  IF:  PC=00000010 | Inst=01400593
  ID:  IFID_inst=00a02023 | rs1=x0 | rs2=x10
       rs1_data=00000000 | rs2_data=0000000a
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x10 | MEMWB_RegWrite=1 | rd_data=0000000a
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=xxxxxxxx | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 6 ===
  IF:  PC=00000014 | Inst=00000013
  ID:  IFID_inst=01400593 | rs1=x0 | rs2=x20
       rs1_data=00000000 | rs2_data=xxxxxxxx
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x10
       IDEX_rs2_data=0000000a | forwardB=00 | forward_rs2_data=0000000a
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 7 ===
  IF:  PC=00000018 | Inst=00000013
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x11 | IDEX_rs1=x0 | IDEX_rs2=x20
       IDEX_rs2_data=xxxxxxxx | forwardB=00 | forward_rs2_data=xxxxxxxx
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=0 | EXMEM_rs2_data=0000000a
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=1 | data_addr=00000000 | write_data=0000000a | ByteEnable=1111
  REG: x10=0000000a | x11=xxxxxxxx | x12=xxxxxxxx
  [DATA_MEM] Writing to dmem[0]: data=0000000a, byteena=1111

=== Cycle 8 ===
  IF:  PC=0000001c | Inst=00b02223
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x11 | EXMEM_RegWrite=1 | EXMEM_rs2_data=xxxxxxxx
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=0 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000014 | write_data=xxxxxxxx | ByteEnable=0001
  REG: x10=0000000a | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 9 ===
  IF:  PC=00000020 | Inst=01e00613
  ID:  IFID_inst=00b02223 | rs1=x0 | rs2=x11
       rs1_data=00000000 | rs2_data=00000014
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x11 | MEMWB_RegWrite=1 | rd_data=00000014
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=xxxxxxxx | x12=xxxxxxxx

=== Cycle 10 ===
  IF:  PC=00000024 | Inst=00000013
  ID:  IFID_inst=01e00613 | rs1=x0 | rs2=x30
       rs1_data=00000000 | rs2_data=xxxxxxxx
  EX:  IDEX_rd=x4 | IDEX_rs1=x0 | IDEX_rs2=x11
       IDEX_rs2_data=00000014 | forwardB=00 | forward_rs2_data=00000014
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=xxxxxxxx

=== Cycle 11 ===
  IF:  PC=00000028 | Inst=00000013
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x12 | IDEX_rs1=x0 | IDEX_rs2=x30
       IDEX_rs2_data=xxxxxxxx | forwardB=00 | forward_rs2_data=xxxxxxxx
  MEM: EXMEM_rd=x4 | EXMEM_RegWrite=0 | EXMEM_rs2_data=00000014
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=1 | data_addr=00000004 | write_data=00000014 | ByteEnable=1111
  REG: x10=0000000a | x11=00000014 | x12=xxxxxxxx
  [DATA_MEM] Writing to dmem[1]: data=00000014, byteena=1111

=== Cycle 12 ===
  IF:  PC=0000002c | Inst=00c02423
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x12 | EXMEM_RegWrite=1 | EXMEM_rs2_data=xxxxxxxx
  WB:  MEMWB_rd=x4 | MEMWB_RegWrite=0 | rd_data=00000004
  OUT: data_we=0 | data_addr=0000001e | write_data=xxxxxxxx | ByteEnable=0100
  REG: x10=0000000a | x11=00000014 | x12=xxxxxxxx

=== Cycle 13 ===
  IF:  PC=00000030 | Inst=02800693
  ID:  IFID_inst=00c02423 | rs1=x0 | rs2=x12
       rs1_data=00000000 | rs2_data=0000001e
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x12 | MEMWB_RegWrite=1 | rd_data=0000001e
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=xxxxxxxx

=== Cycle 14 ===
  IF:  PC=00000034 | Inst=00000013
  ID:  IFID_inst=02800693 | rs1=x0 | rs2=x8
       rs1_data=00000000 | rs2_data=xxxxxxxx
  EX:  IDEX_rd=x8 | IDEX_rs1=x0 | IDEX_rs2=x12
       IDEX_rs2_data=0000001e | forwardB=00 | forward_rs2_data=0000001e
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=0000001e

=== Cycle 15 ===
  IF:  PC=00000038 | Inst=00000013
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x13 | IDEX_rs1=x0 | IDEX_rs2=x8
       IDEX_rs2_data=xxxxxxxx | forwardB=00 | forward_rs2_data=xxxxxxxx
  MEM: EXMEM_rd=x8 | EXMEM_RegWrite=0 | EXMEM_rs2_data=0000001e
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=1 | data_addr=00000008 | write_data=0000001e | ByteEnable=1111
  REG: x10=0000000a | x11=00000014 | x12=0000001e
  [DATA_MEM] Writing to dmem[2]: data=0000001e, byteena=1111

=== Cycle 16 ===
  IF:  PC=0000003c | Inst=00d02623
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x13 | EXMEM_RegWrite=1 | EXMEM_rs2_data=xxxxxxxx
  WB:  MEMWB_rd=x8 | MEMWB_RegWrite=0 | rd_data=00000008
  OUT: data_we=0 | data_addr=00000028 | write_data=xxxxxxxx | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=0000001e

=== Cycle 17 ===
  IF:  PC=00000040 | Inst=03200713
  ID:  IFID_inst=00d02623 | rs1=x0 | rs2=x13
       rs1_data=00000000 | rs2_data=00000028
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x13 | MEMWB_RegWrite=1 | rd_data=00000028
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=0000001e

=== Cycle 18 ===
  IF:  PC=00000044 | Inst=00000013
  ID:  IFID_inst=03200713 | rs1=x0 | rs2=x18
       rs1_data=00000000 | rs2_data=xxxxxxxx
  EX:  IDEX_rd=x12 | IDEX_rs1=x0 | IDEX_rs2=x13
       IDEX_rs2_data=00000028 | forwardB=00 | forward_rs2_data=00000028
  MEM: EXMEM_rd=x0 | EXMEM_RegWrite=1 | EXMEM_rs2_data=00000000
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=0 | data_addr=00000000 | write_data=00000000 | ByteEnable=0001
  REG: x10=0000000a | x11=00000014 | x12=0000001e

=== Cycle 19 ===
  IF:  PC=00000048 | Inst=00000013
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x14 | IDEX_rs1=x0 | IDEX_rs2=x18
       IDEX_rs2_data=xxxxxxxx | forwardB=00 | forward_rs2_data=xxxxxxxx
  MEM: EXMEM_rd=x12 | EXMEM_RegWrite=0 | EXMEM_rs2_data=00000028
  WB:  MEMWB_rd=x0 | MEMWB_RegWrite=1 | rd_data=00000000
  OUT: data_we=1 | data_addr=0000000c | write_data=00000028 | ByteEnable=1111
  REG: x10=0000000a | x11=00000014 | x12=0000001e
  [DATA_MEM] Writing to dmem[3]: data=00000028, byteena=1111

=== Cycle 20 ===
  IF:  PC=0000004c | Inst=00e02823
  ID:  IFID_inst=00000013 | rs1=x0 | rs2=x0
       rs1_data=00000000 | rs2_data=00000000
  EX:  IDEX_rd=x0 | IDEX_rs1=x0 | IDEX_rs2=x0
       IDEX_rs2_data=00000000 | forwardB=00 | forward_rs2_data=00000000
  MEM: EXMEM_rd=x14 | EXMEM_RegWrite=1 | EXMEM_rs2_data=xxxxxxxx
  WB:  MEMWB_rd=x12 | MEMWB_RegWrite=0 | rd_data=0000000c
  OUT: data_we=0 | data_addr=00000032 | write_data=xxxxxxxx | ByteEnable=0100
  REG: x10=0000000a | x11=00000014 | x12=0000001e
  [DATA_MEM] Writing to dmem[4]: data=00000032, byteena=1111
INFO: [USF-XSim-96] XSim completed. Design snapshot 'RV32I_System_tb_behav' loaded.
INFO: [USF-XSim-97] XSim simulation ran for 1000ns
launch_simulation: Time (s): cpu = 00:00:03 ; elapsed = 00:00:06 . Memory (MB): peak = 2408.223 ; gain = 0.000
run all

========================================
Simulation Results at time              2150000
Total cycles executed:         102
==================================

Memory Contents:
mem[0]  = 0x0000000a (        10)
mem[1]  = 0x00000014 (        20)
mem[2]  = 0x0000001e (        30)
mem[3]  = 0x00000028 (        40)
mem[4]  = 0x00000032 (        50)
mem[5]  = 0x00000000 (         0)
mem[6]  = 0x00000000 (         0)

Register File Contents (Selected):
x10 = 0x0000000a (        10)
x11 = 0x00000014 (        20)
x12 = 0x0000001e (        30)
x13 = 0x00000028 (        40)
x14 = 0x00000032 (        50)
x15 = 0xxxxxxxxx (         x)
