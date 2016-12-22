set_attribute lib_search_path /design/UMC65nm_SP_lowK_IP/_G-01-LOGIC_MIXED_MODE65N-SP_LOW_K_UMC-IP/G-9LT-LOGIC_MIXED_MODE65N-SP_LOW_K_UMK65LSCSPMVBBR-LIBRARY_TAPE_OUT_KIT-Ver.B01_P.B/synopsys
set_attribute library {uk65lscspmvbbr_100c25_tc.lib}
set DESIGN sram
read_hdl ../RTL/sram.v -v2001
elaborate $DESIGN
read_sdc ../RTL/sram.sdc
check_design -unresolved
synthesize -to_mapped
write_hdl -mapped > ../netlist/netlist.v
