
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name cpu_32_board -dir "D:/Xilinx/workshop/cpu_32_board/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Xilinx/workshop/cpu_32_board/cpu_board_final.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xilinx/workshop/cpu_32_board} {ipcore_dir} }
add_files "ipcore_dir/imem_ip.ncf" "ipcore_dir/IMEM_ipcore.ncf" "ipcore_dir/IPCORE.ncf" "ipcore_dir/IPCORE1.ncf" "ipcore_dir/ip_core.ncf" -fileset [get_property constrset [current_run]]
set_param project.paUcfFile  "cpu_constrain.ucf"
add_files "cpu_constrain.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
