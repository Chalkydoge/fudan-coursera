						.data
						.align 2
jumptable: 	.word main, case1, case2, case3
prompt: 		.asciiz "\n\n Input a value from 1 to 3:"
						.text
main:       li $s0, 32         #��ʼ��$s0
            li $v0, 4          #��ʾ��ʾ�ַ���
						la $a0, prompt
						syscall
						li $v0, 5          #��������
						syscall						
						blez $v0, case1     #�ж��Ƿ�С��0
						/*
						#li $t3, 3
						#bgt $v0, $t3, main #�ж��Ƿ����3
						la $a1, jumptable  #װ�ز��ұ����ַ
						sll $t0, $v0, 2    #����ƫ��
						add $t1, $a1, $t0  #������תָ���ַ��ŵ�ַ
						lw $t2, 0($t1)     #��ȡ��ת��ַ
						jr $t2             #��ת
case1:			sll $s0, $s0, 1    #����1λ
						b output
case2:			sll $s0, $s0, 2    #����2λ
						b output
case3:			sll $s0, $s0, 3    #����3λ
output:     li $v0, 1          #����������
						move $a0, $s0
						syscall
						li $v0, 10         #�˳�
						syscall
*/						
						