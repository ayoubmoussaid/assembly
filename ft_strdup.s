			global 	_ft_strdup
			extern	_malloc
			section .text
_ft_strdup:
			xor		rbx, rbx  		;index to calculate length
			cmp		rdi, 0
			je 		_error
			jmp		_line

_line:		cmp 	byte [rdi + rbx], 0
			je		_dude
			inc 	rbx				;increment the index
			jmp		_line

_dude:		
			push	rdi				;push the value in rdi to the stack
			mov		rdi, rbx
			inc		rdi
			call	_malloc
			pop		rdi				;pop the values from the stack to rdi again
			xor		rcx, rcx			
			jmp		_copying

_copying:	mov 	dl, byte[rdi + rcx]
			mov 	byte[rax + rcx], dl
			cmp 	byte[rdi + rcx], 0		;verify the length with index
			je		_ends
			inc 	rcx
			jmp		_copying

_ends:		inc		rcx
			mov		byte[rax + rcx], 0
			ret

_error:		xor 	rax, rax
			ret
