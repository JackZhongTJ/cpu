
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name pcreg -dir "D:/Xilinx/workshop/pcreg/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top pcreg $srcset
set_param project.paUcfFile  "pcreg_ucf.ucf"
set hdlfile [add_files [list {pcreg.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "pcreg_ucf.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
