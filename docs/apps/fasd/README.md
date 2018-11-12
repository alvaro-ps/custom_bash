# fasd

As stated in [https://github.com/clvv/fasd](https://github.com/clvv/fasd), *fasd* allows quick access to files and directories by keeping track of those that you have already accessed.

## install
```bash
pacman -S fasd
```

## init
```bash
#!/bin/bash

# initialize fasd
eval "$(fasd --init auto posix-alias bash-ccomp bash-ccomp-install)"
alias v="f -ie vim"
alias z="fasd_cd -id"
_fasd_bash_hook_cmd_complete v
```

[Go to index](../../README.md)
