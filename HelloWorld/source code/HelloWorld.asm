;//����LED
;MOV A,#0EFH;��������ʾ�Ƶ�λ�����ݸ��ۼ���A	��������0xEF
;MOV P2,A;��A��ֵ����P2
;JMP $;
;END
;//����LED
;MOV A,#11101111;��������ʾ�Ƶ�λ�����ݸ��ۼ���A
;MOV P2,A;��A��ֵ����P2
;JMP $;
;END
;//����LED
;mov p2,#0EFH;
;jmp $;
;end
//����LED
;org 000h	//������ʼλ��
;jmp led
;led:clr p2.4
	;jmp $
;end
LOOP: SETB P2.4    ;(1)???
LCALL DELAY        ;(2)??????
CLR P2.4           ;(3)???
LCALL DELAY        ;(4)??????
AJMP LOOP          ;(5)??????LOOP?
;?????
DELAY: MOV R7,#250 ;(6)
D1: MOV R6,#250    ;(7)
D2: DJNZ R6,D2     ;(8)
       DJNZ R7,D1  ;(9)
       RET         ;(10)
END                ;(11)