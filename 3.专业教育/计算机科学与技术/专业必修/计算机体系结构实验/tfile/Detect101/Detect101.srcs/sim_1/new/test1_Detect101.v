`timescale 1ns / 100ps

module test1_Detect101( );
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
  initial
    #24 reset = 1'b0;     //24ns��reset=0

  always #5 clock = ~clock;//ʱ������10ns
  always #7 x = ~x;       //x�仯����14ns
endmodule
