library verilog;
use verilog.vl_types.all;
entity uart is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        rx              : in     vl_logic;
        DataReady       : out    vl_logic;
        DataReceived    : out    vl_logic_vector(7 downto 0)
    );
end uart;
