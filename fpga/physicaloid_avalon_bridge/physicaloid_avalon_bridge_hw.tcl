# TCL File Generated by Component Editor 13.0sp1
# Sat Oct 12 05:22:13 JST 2013
# DO NOT MODIFY


# 
# physicaloid_avalon_bridge "Physicaloid SCIF to AvalonMM bridge" v0.9
# S.OSAFUNE / J-7SYSTEM Works 2013.10.12.05:22:13
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module physicaloid_avalon_bridge
# 
set_module_property DESCRIPTION ""
set_module_property NAME physicaloid_avalon_bridge
set_module_property VERSION 0.9
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Bridges
set_module_property AUTHOR "S.OSAFUNE / J-7SYSTEM Works"
set_module_property DISPLAY_NAME "Physicaloid SCIF to AvalonMM bridge"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL physicaloid_avalonmm_bridge
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file altera_avalon_packets_to_master.v VERILOG PATH altera_avalon_packets_to_master.v
add_fileset_file altera_avalon_st_bytes_to_packets.v VERILOG PATH altera_avalon_st_bytes_to_packets.v
add_fileset_file altera_avalon_st_packets_to_bytes.v VERILOG PATH altera_avalon_st_packets_to_bytes.v
add_fileset_file physicaloid_avalonmm_bridge.v VERILOG PATH physicaloid_avalonmm_bridge.v TOP_LEVEL_FILE
add_fileset_file physicaloid_bytes_to_scif.v VERILOG PATH physicaloid_bytes_to_scif.v
add_fileset_file physicaloid_scif_infifo.v VERILOG PATH physicaloid_scif_infifo.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock clock
set_interface_property avalon_master associatedReset reset
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master address address Output 32
add_interface_port avalon_master readdata readdata Input 32
add_interface_port avalon_master read read Output 1
add_interface_port avalon_master write write Output 1
add_interface_port avalon_master byteenable byteenable Output 4
add_interface_port avalon_master writedata writedata Output 32
add_interface_port avalon_master waitrequest waitrequest Input 1
add_interface_port avalon_master readdatavalid readdatavalid Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset reset
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end scif_sclk export Input 1
add_interface_port conduit_end scif_txd export Input 1
add_interface_port conduit_end scif_txr_n export Output 1
add_interface_port conduit_end scif_rxd export Output 1
add_interface_port conduit_end scif_rxr_n export Input 1

