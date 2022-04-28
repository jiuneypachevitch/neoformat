function! neoformat#formatters#handlebars#enabled() abort
    return ['htmlbeautify', 'prettier', 'prettierd', 'tidy', 'prettydiff']
endfunction

function! neoformat#formatters#handlebars#tidy() abort
    return {
        \ 'exe': 'tidy',
        \ 'args': ['-quiet',
        \          '--indent auto',
        \          '--indent-spaces ' . shiftwidth(),
        \          '--vertical-space yes',
        \          '--tidy-mark no',
        \          '-wrap ' . &textwidth
        \         ],
        \ 'try_node_exe': 1,
        \ }
endfunction

function! neoformat#formatters#handlebars#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '"%:p"'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction

function! neoformat#formatters#handlebars#prettierd() abort
    return {
        \ 'exe': 'prettierd',
        \ 'args': ['"%:p"'],
        \ 'stdin': 1,
        \ }
endfunction

function! neoformat#formatters#handlebars#htmlbeautify() abort
    return {
            \ 'exe': 'html-beautify',
            \ 'args': ['--indent-size ' .shiftwidth(), '-r'],
            \ 'stdin': 1,
            \ }
endfunction

function! neoformat#formatters#handlebars#prettydiff() abort
    return {
        \ 'exe': 'prettydiff',
        \ 'args': ['mode:"beautify"',
                 \ 'lang:"html"',
                 \ 'readmethod:"filescreen"',
                 \ 'endquietly:"quiet"',
                 \ 'source:"%:p"'],
        \ 'no_append': 1
        \ }
endfunction
