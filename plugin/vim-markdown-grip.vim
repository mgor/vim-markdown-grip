let g:vmg_plugin_path = resolve(expand('<sfile>:p:h'))
let g:vmg_port = 6418 " first open markdown document will use port 6419, second 6420 etc.

function! Vim_grip_start()
    let b:curr_file = expand('%:p')
    let g:vmg_port = g:vmg_port + 1 " increment global counter
    let b:vmg_port = g:vmg_port " set a buffer variable, to be used when closing
    let current_window = system("xprop -root _NET_ACTIVE_WINDOW | awk '{print $NF}'")

    " start grip and open live preview in browser
    call system('grip -b "' . b:curr_file . '" ' . b:vmg_port . ' &')

    " change focus back to vim, but let the browswer window have a change to open first
    call system('sleep 0.8 && wmctrl -ia ' . current_window)
endfunction

function! Vim_grip_stop()
    call system("kill $(lsof -i :" . b:vmg_port . " | awk '/^grip/ {print $2; exit}') 2>&1 >/dev/null")
endfunction

function! Vim_grip_to_pdf()
    let b:curr_file = expand('%:p')
    let b:pdf_file = expand('%:p:r')
    call system('markdown-pdf --css-path "' . g:vmg_plugin_path . '/github-markdown-pdf.css" "' . b:curr_file . '"')
    call system('xdg-open "' . b:pdf_file . '.pdf"')
endfunction

autocmd BufNewFile,BufRead *.markdown,*.md :call Vim_grip_start()
autocmd BufWinLeave *.markdown,*.md :call Vim_grip_stop()
map <F12> :call Vim_grip_to_pdf()<CR>
