
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ex5sum -dir "D:/Xilinx/workshop/ex5sum/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx/workshop/ex5sum/cla_32_final.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx/workshop/ex5sum} }
set_param project.paUcfFile  "cla_32_final.ucf"
add_files "cla_32_final.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
