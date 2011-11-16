# general
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi
alias quit="exit"
alias ll='ls -lh'
alias la='ls -A'
alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'
alias ack="ack-grep"
alias fname="find . -print | ack " # find file name
#alias ..='cd ..'
alias -- -='cd -'
alias vim='vim -g'
alias re.=". ~/.bashrc"
# ruby
alias ri="ri -Tf ansi"
alias rspec="rspec -c"
# git
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gl="git log --oneline --decorate --graph"
alias glb="gl --branches=*"
alias go="git checkout"
alias gi="git commit"
alias gd="git diff --ignore-all-space"
alias gds="git diff --staged --ignore-all-space"
alias gm="git merge"
alias gt="git tag"
#tmux
alias tm="tmux"
alias ts="tmux list-sessions"
alias ta="tmux attach"
