			global _ft_read

			section .text
_ft_read:	cmp			rsi, 0
			je 			error
			jne			line

line:		mov 	rax, 0x02000003
			syscall
			jc		error
			ret
error:
			mov		rax, -1
			ret