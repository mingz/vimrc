"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
" me.vim: Used for gary zhao
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set line number
set number


" Colorscheme
if has("gui_running")
    set background=dark
    colorscheme peaksea
else
    colorscheme ron 
    let g:colors_name="ron"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    set csverb
endif

"s: Find this C symbol
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"g: Find this definition
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"c: Find functions calling this function
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"t: Find this text string
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"e: Find this egrep pattern
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"f: Find this file
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"i: Find files #including this file
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"d: Find functions called by this function
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


