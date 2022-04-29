function! neoformat#formatters#handlebars#enabled() abort
    return ['htmlbeautify']
endfunction

function! neoformat#formatters#handlebars#htmlbeautify() abort
    return {
            \ 'exe': 'html-beautify',
            \ 'args': ['--indent-size ' .shiftwidth(), '-q', '-m', '1', '-H', '--templating', 'handlebars'],
            \ 'stdin': 1,
            \ }
endfunction
