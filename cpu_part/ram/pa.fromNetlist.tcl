
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ram -dir "D:/Xilinx/workshop/ram/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx/workshop/ram/ram.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx/workshop/ram} }
set_param project.paUcfFile  "ram_ucf.ucf"
add_files "ram_ucf.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
