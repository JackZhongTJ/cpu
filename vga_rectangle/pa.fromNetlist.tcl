
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name vga_rectangle -dir "D:/Xilinx/workshop/vga_rectangle/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx/workshop/vga_rectangle/vga_module.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx/workshop/vga_rectangle} }
set_param project.paUcfFile  "vga.ucf"
add_files "vga.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
