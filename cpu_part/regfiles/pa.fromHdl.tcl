
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name regfiles -dir "D:/Xilinx/workshop/regfiles/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top regfile $srcset
set_param project.paUcfFile  "regfile.ucf"
set hdlfile [add_files [list {regfile.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "regfile.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
