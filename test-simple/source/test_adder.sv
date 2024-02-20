module test_adder(
	input logic a, b, cin,
	output logic cout, sum
);
	assign cout = (a & b) | (a & cin) | (b & cin);
	assign sum = a ^ b ^ cin;
endmodule