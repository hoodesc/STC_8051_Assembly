;//点亮LED
;MOV A,#0EFH;存入欲显示灯的位置数据给累加器A	送立即数0xEF
;MOV P2,A;将A的值传给P2
;JMP $;
;END
;//点亮LED
;MOV A,#11101111;存入欲显示灯的位置数据给累加器A
;MOV P2,A;将A的值传给P2
;JMP $;
;END
;//点亮LED
;mov p2,#0EFH;
;jmp $;
;end
//点亮LED
;org 000h	//程序起始位置
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