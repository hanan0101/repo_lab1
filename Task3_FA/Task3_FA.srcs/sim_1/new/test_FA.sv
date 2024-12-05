`timescale 1ns / 1ps


module test_FA;
logic a;
logic b;
logic carry; 
logic sum; 
logic cin; //cin, sum ,carry;

FA fa(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.carry(carry)
);


initial begin

 // Display header
$display("Time a  b  cin  sum carry");

$display("%0t %b %b %b  %b   %b", $time, a, b, cin, sum, carry);
a = 0; b = 0; cin=0; #10;

#3
a = 1; b = 0; cin=0; #10;
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 0; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 0; b = 0; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 1; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 1; b = 0; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 0; b = 1; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 1; b = 1; cin=0; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);
#3
a = 1; b = 1; cin=1; #10;
// Display the value of a, b, c, and d along with time
$display("%0t\t%b %b %b  %b   %b", $time, a, b, cin, sum, carry);


$finish;
end 
endmodule