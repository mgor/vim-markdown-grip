function! Vim_grip_start()
    let b:curr_file = expand('%:p')
    call system('grip -b "' . b:curr_file . '" &')
endfunction

function! Vim_grip_stop()
    call system("kill $(lsof -i :6419 | awk '/^grip/ {print $2; exit}') 2>&1 >/dev/null")
endfunction

function! Vim_grip_to_pdf()
    let b:curr_file = expand('%:p')
    let b:pdf_file = expand('%:p:r')
    call system('markdown-pdf "' . b:curr_file . '"')
    call system('xdg-open "' . b:pdf_file . '.pdf"')
endfunction

autocmd BufNewFile,BufRead *.markdown,*.md :call Vim_grip_start()
autocmd BufWinLeave *.markdown,*.md :call Vim_grip_stop()
map <F12> :call Vim_grip_to_pdf()<CR>
