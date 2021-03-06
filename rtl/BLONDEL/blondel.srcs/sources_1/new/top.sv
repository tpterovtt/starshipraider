`default_nettype none
`timescale 1ns/1ps
module top(
	input wire			clk_25mhz,

	//RGMII
	input wire			rgmii_rxc,
	input wire[3:0]		rgmii_rxd,
	input wire			rgmii_rx_ctl,

	output wire			rgmii_txc,
	output wire[3:0]	rgmii_txd,
	output wire			rgmii_tx_ctl,

	//Reset stuff
	output logic		eth_rst_n = 1'h0,

	//MDIO
	inout wire			eth_mdio,
	output wire			eth_mdc,

	//I2C bus to MAC addr eeprom
	inout wire			i2c_sda,
	output wire			i2c_scl,

	//Clock mux configuration
	output wire			mux_inbuf_sel,
	output wire			mux_sel,

	//ADC signals
	input wire			adc_lclk_p,
	input wire			adc_lclk_n,
	input wire			adc_fclk_p,
	input wire			adc_fclk_n,
	input wire[3:0]		adc_data_a_p,
	input wire[3:0]		adc_data_a_n,
	input wire[3:0]		adc_data_b_p,
	input wire[3:0]		adc_data_b_n,
	output wire			adc_pd,
	output wire			adc_rst_n,
	output wire			adc_spi_clk,
	output wire			adc_spi_data,
	output wire			adc_spi_cs_n,

	//SCPI UART to STM32
	output wire			uart_tx,
	input wire			uart_rx
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock mux configuration

	assign mux_inbuf_sel	= 0;	//low bias voltage
	assign mux_sel			= 1;	//625 MHz sample clock

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Reset control

	//Bring up the PHY after a little while
	logic[15:0] eth_rst_count = 1;
	always_ff @(posedge clk_25mhz) begin
		if(eth_rst_count == 0)
			eth_rst_n		<= 1;
		else
			eth_rst_count	<= eth_rst_count + 1'h1;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock synthesis

	wire	clk_125mhz;
	wire	clk_250mhz;
	wire	clk_100mhz;
	wire	clk_200mhz;
	wire	clk_10mhz;

	SystemPLL pll(
		.clk_25mhz(clk_25mhz),

		.clk_100mhz(clk_100mhz),
		.clk_125mhz(clk_125mhz),
		.clk_200mhz(clk_200mhz),
		.clk_250mhz(clk_250mhz),
		.clk_10mhz(clk_10mhz)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I/O delay calibration

	IODelayCalibration cal(.refclk(clk_200mhz));

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// PLL for the ADC

	wire	lclk;
	wire	fast_clk;
	wire	slow_clk;

	//TODO: reset pll when changing ADC speeds etc
	ADCPLL pll2(
		.lclk(lclk),
		.fast_clk(fast_clk),
		.slow_clk(slow_clk)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The ADC

	`include "HMCAD1520.svh"

	h1520bus_t	adc_bus;

	HMCAD1520 adc(
		.ctl_clk(clk_100mhz),

		.lclk(lclk),
		.fast_clk(fast_clk),
		.slow_clk(slow_clk),

		.sample_bus(adc_bus),

		.lclk_p(adc_lclk_p),
		.lclk_n(adc_lclk_n),
		.fclk_p(adc_fclk_p),
		.fclk_n(adc_fclk_n),
		.data_a_p(adc_data_a_p),
		.data_a_n(adc_data_a_n),
		.data_b_p(adc_data_b_p),
		.data_b_n(adc_data_b_n),
		.pd(adc_pd),
		.rst_n(adc_rst_n),
		.spi_clk(adc_spi_clk),
		.spi_data(adc_spi_data),
		.spi_cs_n(adc_spi_cs_n)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I2C bus for module-side peripherals

	`include "I2CTransceiver.svh"

	i2c_in_t txvr_cin;
	i2c_out_t txvr_cout;

	I2CTransceiver i2c_txvr(
		.clk(clk_100mhz),
		.clkdiv(16'd250),		//400 kHz
		.i2c_scl(i2c_scl),
		.i2c_sda(i2c_sda),
		.cin(txvr_cin),
		.cout(txvr_cout)
	);

	localparam NUM_I2C = 1;

	i2c_in_t[NUM_I2C-1:0]	i2c_driver_cin;
	i2c_out_t[NUM_I2C-1:0]	i2c_driver_cout;
	wire[NUM_I2C-1:0]		i2c_driver_request;
	wire[NUM_I2C-1:0]		i2c_driver_done;
	wire[NUM_I2C-1:0]		i2c_driver_ack;

	I2CArbiter #(
		.NUM_PORTS(NUM_I2C)
	) i2c_arbiter(
		.clk(clk_100mhz),

		.driver_request(i2c_driver_request),
		.driver_done(i2c_driver_done),
		.driver_ack(i2c_driver_ack),
		.driver_cin(i2c_driver_cin),
		.driver_cout(i2c_driver_cout),

		.txvr_cin(txvr_cin),
		.txvr_cout(txvr_cout)
		);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// MAC address generator

	wire		mac_addr_done;
	wire		mac_addr_ready;
	wire		mac_addr_fail;
	wire[47:0]	mac_addr;
	wire[127:0]	eeprom_serial;

	//Read from the EEPROM
	I2CMACAddressReader mac_reader(
		.clk(clk_100mhz),

		.driver_req(i2c_driver_request[0]),
		.driver_ack(i2c_driver_ack[0]),
		.driver_done(i2c_driver_done[0]),
		.driver_cin(i2c_driver_cin[0]),
		.driver_cout(i2c_driver_cout[0]),

		.done(mac_addr_done),
		.ready(mac_addr_ready),
		.fail(mac_addr_fail),
		.mac(mac_addr),
		.serial(eeprom_serial)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The MAC

	`include "GmiiBus.svh"
	`include "EthernetBus.svh"

	wire			mac_rx_clk;
	EthernetRxBus	mac_rx_bus;
	EthernetTxBus	mac_tx_bus;
	wire			mac_tx_ready;

	wire			link_up;
	lspeed_t		link_speed;

	RGMIIMACWrapper mac(
		.clk_125mhz(clk_125mhz),
		.clk_250mhz(clk_250mhz),

		.rgmii_rxc(rgmii_rxc),
		.rgmii_rxd(rgmii_rxd),
		.rgmii_rx_ctl(rgmii_rx_ctl),

		.rgmii_txc(rgmii_txc),
		.rgmii_txd(rgmii_txd),
		.rgmii_tx_ctl(rgmii_tx_ctl),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),

		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.link_up(link_up),
		.link_speed(link_speed)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The IP stack

	`include "IPv4Bus.svh"
	`include "TCPv4Bus.svh"
	`include "UDPv4Bus.svh"

	IPv4Config ip_config;
	assign ip_config.address	= {8'd10, 8'd2, 8'd6, 8'd10};
	assign ip_config.mask		= 32'hffffff00;
	assign ip_config.gateway	= {8'd10, 8'd2, 8'd6, 8'd252};

	UDPv4RxBus	udpv4_rx_bus;
	UDPv4TxBus	udpv4_tx_bus	 =0;

	TCPv4RxBus	tcpv4_rx_bus;
	TCPv4TxBus	tcpv4_tx_bus;

	logic		tcp_port_open_en	= 0;
	logic		tcp_port_close_en	= 0;
	portnum_t	tcp_port_num		= 0;

	localparam TCP_RAM_DEPTH = 256;

	wire		ram_wr_en;
	wire[7:0]	ram_wr_addr;
	wire[511:0]	ram_wr_data;

	wire		ram_rd_en;
	wire[7:0]	ram_rd_addr;
	wire[511:0]	ram_rd_data;
	logic		ram_rd_valid	= 0;

	TCPIPStack #(
		.TX_PACKET_DEPTH(8192),
		.CLK_IPSTACK_HZ(100000000),	//100 MHz clock
		.TCP_RAM_DEPTH(TCP_RAM_DEPTH)
	) stack (
		.clk_ipstack(clk_100mhz),

		.ip_config(ip_config),
		.mac_address(mac_addr),
		.promisc_mode(1'b0),
		.config_update(mac_addr_done),
		.link_up(link_up),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),
		.mac_tx_clk(clk_125mhz),
		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.udpv4_rx_bus(udpv4_rx_bus),
		.udpv4_tx_bus(udpv4_tx_bus),

		.tcpv4_rx_bus(tcpv4_rx_bus),
		.tcpv4_tx_bus(tcpv4_tx_bus),
		.tcp_port_open_en(tcp_port_open_en),
		.tcp_port_close_en(tcp_port_close_en),
		.tcp_port_num(tcp_port_num),

		.ram_ready(1'b1),
		.ram_wr_en(ram_wr_en),
		.ram_wr_addr(ram_wr_addr),
		.ram_wr_data(ram_wr_data),

		.ram_rd_en(ram_rd_en),
		.ram_rd_addr(ram_rd_addr),
		.ram_rd_data(ram_rd_data),
		.ram_rd_valid(ram_rd_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP retransmit memory

	MemoryMacro #(
		.WIDTH(512),
		.DEPTH(TCP_RAM_DEPTH),
		.USE_BLOCK(1),
		.OUT_REG(2),
		.DUAL_PORT(1),
		.TRUE_DUAL(1)
	) tcp_mem (

		.porta_clk(clk_100mhz),
		.porta_en(ram_wr_en),
		.porta_addr(ram_wr_addr),
		.porta_we(ram_wr_en),
		.porta_din(ram_wr_data),
		.porta_dout(),

		.portb_clk(clk_100mhz),
		.portb_en(ram_rd_en),
		.portb_addr(ram_rd_addr),
		.portb_we(1'b0),
		.portb_din(512'h0),
		.portb_dout(ram_rd_data)
	);

	logic	ram_rd_en_ff	= 0;
	always_ff @(posedge clk_100mhz) begin
		ram_rd_en_ff	<= ram_rd_en;
		ram_rd_valid	<= ram_rd_en_ff;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Open ports when we start up

	logic[2:0] init_state = 0;

	localparam SCPI_PORT 		= 16'd5025;
	localparam WAVEFORM_PORT 	= 16'd50101;

	always_ff @(posedge clk_100mhz) begin

		tcp_port_open_en	<= 0;

		case(init_state)

			0: begin
				tcp_port_open_en	<= 1;
				tcp_port_num		<= SCPI_PORT;
				init_state			<= 1;
			end

			1: begin
				tcp_port_open_en	<= 1;
				tcp_port_num		<= WAVEFORM_PORT;
				init_state			<= 2;
			end

			2: begin
				//hang forever
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Take data coming in for port 5025 and stream out the UART

	TCPv4TxBus	uart_tx_bus;
	wire		uart_rts;
	wire		uart_cts;

	TCPUARTBridge uart_bridge(
		.clk_uart(clk_10mhz),
		.clkdiv_uart(16'd87),	//115.2 Kbps @ 10 MHz

		.clk_tcp(clk_100mhz),
		.tcp_port(SCPI_PORT),
		.tcp_rx_bus(tcpv4_rx_bus),
		.tcp_rts(uart_rts),
		.tcp_cts(uart_cts),
		.tcp_tx_bus(uart_tx_bus),

		.uart_tx(uart_tx),
		.uart_rx(uart_rx)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The ADC manager

	AcquisitionManager mgr(
		.adc_clk(slow_clk),
		.adc_bus(adc_bus),

		.uart_rts(uart_rts),
		.uart_cts(uart_cts),
		.uart_tx_bus(uart_tx_bus),

		.tcp_clk(clk_100mhz),
		.tcp_port(WAVEFORM_PORT),
		.tcp_rx_bus(tcpv4_rx_bus),
		.tcp_tx_bus(tcpv4_tx_bus)
	);

endmodule
