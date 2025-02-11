read_db "/home/dhanvanti/scl_pdk_v2/iolib/cio250/synopsys/2002.05/models/tsl18cio250_typ.db"

read_db "/home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db"


set target_library "/home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db /home/dhanvanti/scl_pdk_v2/iolib/cio250/synopsys/2002.05/models/tsl18cio250_typ.db"

set link_library {"* /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db /home/dhanvanti/scl_pdk_v2/iolib/cio250/synopsys/2002.05/models/tsl18cio250_typ.db"}

set_app_var target_library $target_library
set_app_var link_library $link_library



set root_dir "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/vsdcaravel_scl180"
set io_lib "/home/dhanvanti/scl_pdk_v2/iolib/cio250/verilog/tsl18cio250/zero"
set verilog_files  "$root_dir/rtl"
set top_module "vsdcaravel" ;
set output_file "$root_dir/synthesis/output/vsdcaravel_synthesis.v"
set report_dir "$root_dir/synthesis/report"
read_file $verilog_files/defines.v
read_file $io_lib -autoread -define USE_POWER_PINS -format verilog
read_file $verilog_files/scl180_wrapper -autoread -define USE_POWER_PINS -format verilog
read_file $verilog_files -autoread -define USE_POWER_PINS -format verilog -top $top_module
read_sdc "$root_dir/synthesis/vsdcaravel.sdc"
update_timing

elaborate $top_module

link
#set_uniquify_design false;
#set_flatten false

compile
report_qor > "$report_dir/qor_post_synth.rpt"
report_area > "$report_dir/area_post_synth.rpt"
report_power > "$report_dir/power_post_synth.rpt"


write -format verilog -hierarchy -output $output_file



 




