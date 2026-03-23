// TODO: change these paths if you move the Memory or RegFile instantiation
// to a different module
`define RF_PATH   CPU.icpu.i_datapath.i_regfile
`define DMEM_PATH CPU.iDMem
`define IMEM_PATH CPU.iIMem
//`define IMEM_PATH CPU.imem
//`define BIOS_PATH CPU.bios_mem
`define CSR_PATH  CPU.icpu.i_datapath.tohost_csr
