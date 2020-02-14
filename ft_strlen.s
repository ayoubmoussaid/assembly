			global _ft_strlen

			section .text
_ft_strlen:	mov			rax, 0  ;index to calculate length
			cmp			rdi, 0
			je 			end
			jmp			line

line:		cmp 	byte [rdi], 0
			je		end
			inc 	rax
			inc		rdi
			jmp		line
end:
			ret