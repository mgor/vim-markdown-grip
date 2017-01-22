function! Vim_grip_start()
    let b:curr_file = expand('%:p')
    call system('grip -b "' . b:curr_file . '" &')
endfunction

function! Vim_grip_stop()
    call system("kill $(lsof -i :6419 | awk '/^grip/ {print $2; exit}') 2>&1 >/dev/null")
endfunction

autocmd BufNewFile,BufRead *.markdown,*.md :call Vim_grip_start()
autocmd BufWinLeave *.markdown,*.md :call Vim_grip_stop()
