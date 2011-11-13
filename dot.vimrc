syntax		on
filetype	on
filetype plugin on
filetype indent on
colorscheme	koehler
let		c_space_errors=1
highlight	WhitespaceEOL ctermbg=red guibg=red
match		WhitespaceEOL /\s\+$/
set		cindent
set		hlsearch
"tab-ok es space-ek kiemelese"
""set list listchars=tab:>-,trail:.,extends:>""
set		list listchars=tab:»\ ,extends:>

set		tags+=$HOME/.vim/tags/current.ctags
set		tags+=$HOME/.vim/tags/system.ctags
set		tags+=$HOME/.vim/tags/glib.ctags

map <F1> ^iSigned-off-by: Oliver Pinter <oliver.pntr@gmail.com><CR><ESC>^
map! <F1> Signed-off-by: Oliver Pinter <oliver.pntr@gmail.com><CR>
map <F2> ^iCC: Oliver Pinter <oliver.pntr@gmail.com><CR><ESC>^
map! <F2> CC: Oliver Pinter <oliver.pntr@gmail.com><CR>
map <F3> ^iAcked-by: Oliver Pinter <oliver.pntr@gmail.com><CR><ESC>^
map! <F3> Acked-by: Oliver Pinter <oliver.pntr@gmail.com><CR>
map <F4> ^iTested-by: Oliver Pinter <oliver.pntr@gmail.com><CR><ESC>^
map! <F4> Tested-by: Oliver Pinter <oliver.pntr@gmail.com><CR>


inoremap <Nul> <C-x><C-o>
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
map <silent><C-Left> <C-T>
map <silent><C-Right> <C-]>
map <F12> :!exctags -f $HOME/.vim/tags/current.ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
function! SuperCleverTab()
	if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
	    return "\<Tab>"
	else
		if &omnifunc != ''
			return "\<C-X>\<C-O>"
		elseif &dictionary != ''
			return "\<C-K>"
		else
			return "\<C-N>"
		endif
	endif
endfunction

