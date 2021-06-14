#
# ~/.bashrc
#

## Display Date & Time w/ History
HISTTIMEFORMAT="%F %T "



export PATH="$HOME/bin:$PATH"


## Aliases ##
alias yt="ytfzf -t"
alias vim="nvim"
alias vi="nvim"
alias ls="exa -l --icons"
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'  # human-readable sizes
alias more=less
alias cat="bat"
alias latexmk="latexmk -xelatex"
eval "$(starship init bash)"
