# Lazy
:Lazy

# Telescope
<leader>ff
        fg
        fb
        fh

# Neo-tree
Press ? in the Neo-tree window to view the list of mappings.

# xclip
"+y to copy from nvim to something else

# lsp
K -> hover() 
gd -> go to defintion of function
<leader>ca -> show code actions

# snippets/ autocomplete
idk they are in completions.lua kek

# lint/ format
<leader>gf -> format code

# My mappings
C-e -> go to end of line in INSERT mode
$ -> ¤
    ((number)¤ for go to end of line in NORMAL mode)
    (¤d for delete after cursor)


# useful default vim bindings
dw -> delete from cursor position of current word to end of word
(number)j -> jump down (number) lines in NORMAL mode
(number)k -> jump up (number) lines in NORMAL mode

> to indent in VISUAL mode

hjkl to move around in NORMAL and VISUAL

C-w -> switch window in focus

Pressing a (for append) will switch to Insert mode and move the cursor after the current character.

Pressing o will switch to Insert mode and insert a new line below the line the cursor is on.

# visual block stuff
x to delete
multi-line comments: select lines, shift+i to go insert mode, type something on first line, hit ESC
    - this will apply to each line selected in visual block

# random

## Language Server Protocol (LSP)
language server protocol
open json rpc standard
for javascript -> tsserver
code editor(ide) send information about the file being opened or updated to the LSP
    LSP responds back with errors and stuff to the editor
        editor display these to user
