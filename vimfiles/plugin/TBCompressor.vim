" File:         TBCompressor.vim
" Author:       mingcheng<i.feelinglucky@gmail.com>
" Link:         http://www.gracecode.com/
" Version:      0.1
" Description:  调用 TBCompressor 压缩 Javascript 以及 CSS 文件
" Last Modified: March 18, 2009

if exists("loaded_tb_compressor")
    finish
endif
let loaded_tb_compressor = 1

if !exists("tb_compressor_command")
    let tb_compressor_command = 'compressor.cmd'
endif

if !exists("tb_compressor_command_options")
    let tb_compressor_command_options = ''
endif

" set up auto commands
au FileType javascript,css nnoremap <silent> <leader>tc :call TBCompressor()<cr>

function TBCompressor()
    let current_file = shellescape(expand('%:p'))
    let compressor_command = g:tb_compressor_command . ' ' . g:tb_compressor_command_options . ' ' . current_file
    if has("win32") && v:lang == 'zh_CN.utf-8'
        let compressor_command = iconv(compressor_command, 'utf-8', 'gbk')
    endif
    let cmd_output = system(compressor_command)
    if has("win32") && v:lang == 'zh_CN.utf-8'
        let cmd_output = iconv(cmd_output, 'gbk', 'utf-8')
    endif

    " if some result were found, we echo them
    if strlen(cmd_output) > 0
        echo cmd_output
    else 
        echoerr current_file . 'NOT Comporessed'
    endif
endfunction
