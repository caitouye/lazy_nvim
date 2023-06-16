

" fvim字体
" 字体						中文	横竖线	文件图标	连字
" 默认字体					yes		yes		yes			no	
" FiraCode NF Retina		yes		yes		yes			yes	
" Cascadia Code				yes		yes		yes			yes	
" IntelOne Mono				yes		no		yes			no	


if exists('g:fvim_loaded')
	" good old 'set guifont' compatibility with HiDPI hints...
	if g:fvim_os == 'windows' || g:fvim_render_scale > 1.0
		set guifont=FiraCode\ NF\ Retina:h16
		" set guifont=Cascadia\ Code:h16
		" set guifont=IntelOne\ Mono:h16
	else
		set guifont=Cascadia\ Code:h28
	endif

	" Ctrl-ScrollWheel for zooming in/out
	nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
	nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
	nnoremap <A-CR> :FVimToggleFullScreen<CR>


	FVimCursorSmoothMove v:true
	FVimCursorSmoothBlink v:true
endif

