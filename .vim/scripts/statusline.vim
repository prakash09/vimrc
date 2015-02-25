function! HasPaste()
	if &paste
	return ' PASTE '
    en
    return ''
endfunction
" Format the statusline
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L% 
set statusline=\ %{HasPaste()}%m%r%h\ \ Line:\ %l/%L%{GitBranchInfoString()}\ %F\ 

