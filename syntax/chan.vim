" Vim syntax file
" Language: Chan
" Maintainer: Viktor A. Rozenko Voitenko

if exists("b:current_syntax")
    finish
endif

syn keyword chanBool True False
syn keyword chanKeyword let use chan as when is then

syn region chanComment start="#" end="$" contains=chanNote,chanTodo
syn region chanMultiComment start="#{" end="}#" contains=chanNote,chanTodo
syn region chanNote start="NOTE:" end="$" contained
syn region chanTodo start="TODO:" end="$" contained
syn region chanString start='"' end='"' contains=chanEscape

syn match chanEscape /\\["&'\\abfnrtv]/ contained
syn match chanIdent /[a-z_][0-9A-Za-z_]*/
syn match chanType /[A-Z][0-9A-Za-z_]*/
syn match chanInt "\<[0-9]\+\>\|\<0x[0-9a-fA-F]\+\>\|\<0o[0-7]\+\>\|\<0b[01]\+\>"
syn match chanFloat "\<[0-9]\+\.[0-9]\+\>"

let b:current_syntax = "chan"

hi def link chanNote              Todo
hi def link chanTodo              Todo
hi def link chanComment           Comment
hi def link chanMultiComment      Comment
hi def link chanType              Type
hi def link chanIdent             Identifier
hi def link chanBool              Boolean
hi def link chanInt               Number
hi def link chanFloat             Float
hi def link chanEscape            SpecialChar
hi def link chanString            String
