	component nios2_control is
		port (
			clk_clk                                : in  std_logic                    := 'X';             -- clk
			reset_reset_n                          : in  std_logic                    := 'X';             -- reset_n
			led_led_pio_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			button_pio_external_in_port            : in  std_logic_vector(3 downto 0) := (others => 'X'); -- in_port
			button_pio_external_out_port           : out std_logic_vector(3 downto 0)                     -- out_port
		);
	end component nios2_control;

	u0 : component nios2_control
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			reset_reset_n                          => CONNECTED_TO_reset_reset_n,                          --                           reset.reset_n
			led_led_pio_external_connection_export => CONNECTED_TO_led_led_pio_external_connection_export, -- led_led_pio_external_connection.export
			button_pio_external_in_port            => CONNECTED_TO_button_pio_external_in_port,            --             button_pio_external.in_port
			button_pio_external_out_port           => CONNECTED_TO_button_pio_external_out_port            --                                .out_port
		);

