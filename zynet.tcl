set_attr library slow.libgui_
read_hdl {zynet.v axi_lite_wrapper.v Layer_1.v Layer_2.v Layer_3.v maxFinder.v neuron.v psmac.v relu.v Sig_ROM.v ssbb.v full.v half.v include.v}
##set_top_design rca
elaborate
syn_generic
syn_map_
syn_opt

write_netlist> zynet_netlist.v

gui_show

report_power > zynet_power.rpt
report_area > zynet_area.rpt
