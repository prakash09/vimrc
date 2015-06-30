function! HasPaste()
	if &paste
	return ' PASTE '
    en
    return ''
endfunction
" Format the statusline
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L% 
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" set statusline=\ %{HasPaste()}%m%r%h\ \ Line:\ %l/%L%

