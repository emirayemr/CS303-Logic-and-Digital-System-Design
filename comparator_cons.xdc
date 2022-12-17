##switch A
set_property -dict { PACKAGE_PIN R15  IOSTANDARD LVCMOS33 } [get_ports { A3 }];
set_property -dict { PACKAGE_PIN M13    IOSTANDARD LVCMOS33 } [get_ports { A2 }];
set_property -dict { PACKAGE_PIN L16  IOSTANDARD LVCMOS33 } [get_ports { A1 }];
set_property -dict { PACKAGE_PIN J15    IOSTANDARD LVCMOS33 } [get_ports { A0 }];
##switch B
set_property -dict { PACKAGE_PIN T8  IOSTANDARD LVCMOS33 } [get_ports { B3 }];
set_property -dict { PACKAGE_PIN R13    IOSTANDARD LVCMOS33 } [get_ports { B2 }];
set_property -dict { PACKAGE_PIN U18  IOSTANDARD LVCMOS33 } [get_ports { B1 }];
set_property -dict { PACKAGE_PIN T18    IOSTANDARD LVCMOS33 } [get_ports { B0 }];

set_property -dict { PACKAGE_PIN J13    IOSTANDARD LVCMOS33 } [get_ports { A_eq_B }];
set_property -dict { PACKAGE_PIN H17    IOSTANDARD LVCMOS33 } [get_ports { A_gt_B }];
set_property -dict { PACKAGE_PIN K15    IOSTANDARD LVCMOS33 } [get_ports { A_lt_B }];