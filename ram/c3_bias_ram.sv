module c3_bias_ram(
	input logic 					Clk,
	input logic [9:0]				addr,
	output logic signed [31:0] read_data
);

	logic signed [31:0] mem [60];
	
	initial
	begin
		$readmemb("D:/Projects/ECE385Labs/final/final_code/weights/tiny_c3/c3_bias.txt", mem);
	end
	
	always_ff@(negedge Clk)
	begin
		read_data <= mem[addr];
	end

endmodule