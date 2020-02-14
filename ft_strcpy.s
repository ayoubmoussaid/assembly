			global _ft_strcpy

			section .text
_ft_strcpy: cmp			rdi, 0
			je 			end
			cmp			rsi, 0
			je 			end
			mov			rcx, 0
			jmp			line

line:		
			mov 	al, byte [rsi + rcx]
			mov 	byte[rdi + rcx], al
			cmp 	byte[rsi + rcx], 0
			je		end
			inc 	rcx
			jmp		line
end:
			mov rax, rdi
			ret
