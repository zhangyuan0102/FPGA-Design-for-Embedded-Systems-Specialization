/* This is a Verilog template for use with the BeMicro MAX 10 development kit */
/* It is used for showing the IO pin names and directions                     */
/* Ver 0.2 10.07.2014                                                         */

/* NOTE: A VHDL version of this template is also provided with this design    */
/* example for users that prefer VHDL. This BeMicro_MAX10_top.v file would    */
/* need to be removed from the project and replaced with the                  */
/* BeMicro_MAX10_top.vhd file to switch to the VHDL template.                 */

/* The signals below are documented in the "BeMicro MAX 10 Getting Started    */
/* User Guide."  Please refer to that document for additional signal details. */

`define ENABLE_CLOCK_INPUTS
`define ENABLE_DAC_SPI_INTERFACE
`define ENABLE_TEMP_SENSOR
`define ENABLE_ACCELEROMETER
`define ENABLE_SDRAM
`define ENABLE_SPI_FLASH
`define ENABLE_MAX10_ANALOG
`define ENABLE_PUSHBUTTON
`define ENABLE_LED_OUTPUT
`define ENABLE_EDGE_CONNECTOR
`define ENABLE_HEADERS
`define ENABLE_GPIO_J3
`define ENABLE_GPIO_J4
`define ENABLE_PMOD

module qsys_control (
    /* Clock inputs, SYS_CLK = 50MHz, USER_CLK = 24MHz */    
`ifdef ENABLE_CLOCK_INPUTS
    input SYS_CLK,
    input USER_CLK,
`else
    input dummy_sys_clk,
    input dummy_user_clk,
`endif

`ifdef ENABLE_PUSHBUTTON    
    input [4:1] PB,
`else
    input [4:1] dummy_pb,
`endif    

`ifdef ENABLE_LED_OUTPUT
    output [8:1] USER_LED
`else
    output [8:1] dummy_user_led
`endif    
);

`ifdef ENABLE_PUSHBUTTON
wire reset_n;
assign reset_n = PB[1] | PB[4];
`else
wire reset_n = 1'b0; // Default reset_n if ENABLE_PUSHBUTTON is not defined
`endif

nios2_control u0 (
`ifdef ENABLE_CLOCK_INPUTS
    .clk_clk (SYS_CLK),
`else
    .clk_clk (dummy_sys_clk),
`endif

    .reset_reset_n (reset_n),

`ifdef ENABLE_LED_OUTPUT
    .led_led_pio_external_connection_export (USER_LED[8:1]),
`else
    .led_led_pio_external_connection_export (),
`endif         
`ifdef ENABLE_PUSHBUTTON
    .button_pio_external_in_port (PB[4:1]),
    .button_pio_external_out_port ()
`else
    .button_pio_external_in_port (4'b0000),
    .button_pio_external_out_port ()
`endif
);

endmodule




