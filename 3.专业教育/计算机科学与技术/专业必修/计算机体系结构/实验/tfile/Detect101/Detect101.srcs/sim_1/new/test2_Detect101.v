`timescale 1ns / 100ps
// ����2�������ź���clockͬ��
module test2_Detect101( );
    reg x,reset,clock;//����ģ������˿ڱ���
    wire z;           //����ģ������˿ڱ���
    //ʵ����
    Detect101 MUT(x, reset, clock, z);
    //��ʼ��
    initial begin
      x = 1'b0;
      reset = 1'b1;
      clock = 1'b0;
    end
    //�����ź�
    initial #24 reset = 1'b0; //24ns��reset=0
  
    always  #5 clock = ~clock;//ʱ������10ns
    //��clockͬ��
    always forever @(posedge clock) x = ~x; 
endmodule    

//    //ÿ�� current ״ֵ̬�仯ʱ���ͻ���ʾ�仯���ֵ
//    initial $monitor("New state is %d and occurs at %t",MUT.current, $time);
//    //ÿ�����ֵ z �仯ʱ���ͻ���ʾ�仯���ֵ
//    always @(z) $display("Output changes at %t to %b", $time, z);

