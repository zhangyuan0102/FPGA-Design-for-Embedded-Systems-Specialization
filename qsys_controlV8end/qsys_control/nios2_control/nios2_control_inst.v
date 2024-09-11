	nios2_control u0 (
		.clk_clk                                (<connected-to-clk_clk>),                                //                             clk.clk
		.reset_reset_n                          (<connected-to-reset_reset_n>),                          //                           reset.reset_n
		.led_led_pio_external_connection_export (<connected-to-led_led_pio_external_connection_export>), // led_led_pio_external_connection.export
		.button_pio_external_in_port            (<connected-to-button_pio_external_in_port>),            //             button_pio_external.in_port
		.button_pio_external_out_port           (<connected-to-button_pio_external_out_port>)            //                                .out_port
	);

