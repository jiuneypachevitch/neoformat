function! neoformat#formatters#handlebars#enabled() abort
    return ['htmlbeautify']
endfunction

function! neoformat#formatters#handlebars#htmlbeautify() abort
    return {
            \ 'exe': 'html-beautify',
            \ 'args': ['-m', '1', '-q', '-H', '--templating', 'handlebars', '-r ', '-f ', '"%:p"'],
            \ 'stdin': 0,
            \ 'try_node_exe': 1,
            \ }
endfunction
