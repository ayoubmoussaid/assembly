			global 		_ft_strcmp

			section 	.text
			
_ft_strcmp: mov			rcx, 0
			cmp			rdi, 0
			je 			error
			cmp			rsi, 0
			je 			error
			jmp			line

line:		
			cmp 	byte[rdi + rcx], 0
			je		end
			cmp 	byte[rsi + rcx], 0
			je		end
			mov 	dl, byte[rdi + rcx]
			cmp		byte[rsi + rcx], dl
			jne		end
			inc 	rcx
			jmp		line
end:
			mov		al, byte[rdi + rcx]
			sub		al, byte[rsi + rcx]
			movsx	rax, al
			ret

error:
			xor 	rax, rax
			ret