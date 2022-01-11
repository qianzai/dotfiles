[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--bind ctrl-e:down,ctrl-u:up --preview "[[ $(file --mime {}) =~ binary  ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'

