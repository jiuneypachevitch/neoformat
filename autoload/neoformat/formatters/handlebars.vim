function! neoformat#formatters#handlebars#enabled() abort
    return ['htmlbeautify']
endfunction

function! neoformat#formatters#handlebars#htmlbeautify() abort
    return {
            \ 'exe': 'npx html-beautify',
            \ 'args': ['-m', '1', '-q', '-H', '--templating', 'handlebars', '-r ', '-f ', '"%:p"'],
            \ 'stdin': 0,
            \ }
endfunction
