
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name led2 -dir "D:/Xilinx/workshop/led2/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx/workshop/led2/led2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx/workshop/led2} }
set_param project.paUcfFile  "led2.ucf"
add_files "led2.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
