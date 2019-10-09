//����ģ��
module Top1(output [7:0] accout,
            output       cout,
            input  [7:0] accin,
            input        cin,
            input        clk,
            input        clear);
    
    wire [7 : 0] sum;
    //����add8��ģ��
    add8 accadd8(sum, cout, accout, accin, cin);
    //����reg8��ģ��
    reg8 accreg8(accout, sum, clk, clear);    
endmodule
//8λȫ����
module add8(output [7:0] sum,
            output       cout,
            input  [7:0] a,
            input  [7:0] b,
            input        cin);
    assign {cout, sum} = a + b + cin;
endmodule
//8λ�Ĵ���
module reg8(output reg [7:0] qout,
            input       [7:0] in,
            input             clk,
            input             clear);
    always @(posedge clk or posedge clear) begin
       if(clear)  qout = 0; //�첽��0
       else       qout = in;
    end
endmodule       