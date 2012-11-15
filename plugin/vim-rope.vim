if exists("s:loaded")
    finish
endif
let s:loaded = 1

python << EOF
import os, sys, vim
here = os.path.dirname(vim.eval('expand("<sfile>:p")'))
pylibs = os.path.join(os.path.dirname(here), 'pylibs')
sys.path[:0] = [os.path.join(pylibs, x) for x in ['ropevim', 'ropemode', 'rope']]
EOF
