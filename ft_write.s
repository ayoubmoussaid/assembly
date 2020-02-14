			global _ft_write

			section .text
_ft_write:  cmp			rsi, 0
			je 			error
			jne			line

line:		mov 	rax, 0x02000004
			syscall
			jc		error
			ret
error:
			mov		rax, -1
			ret