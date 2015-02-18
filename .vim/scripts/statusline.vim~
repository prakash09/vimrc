function! CurDir()
	return substitute(getcwd(), '/Users/amir/', "~/", "g")
endfunction
function! HasPaste()
	if &paste
	return ' PASTE MODE '
    en
    return ''
endfunction
" Format the statusline
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L% 
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L%{GitBranchInfoString()}

