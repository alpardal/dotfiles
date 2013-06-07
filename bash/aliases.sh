# general
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls -xX --color=auto'
fi
alias quit="exit"
alias sa="sudo apt-get"
alias ll='ls -oh'
alias la='ls -A'
alias l1="ls -F -1 --group-directories-first"
alias ack="ack-grep -a"
alias a="ack-grep"
alias -- -='cd -'
alias re.=". ~/.bashrc"
# ruby
alias ri="ri -Tf ansi"
alias gemset="rvm gemset"
# git
alias gs="git status"
alias gss="git status --short"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gl="git log --oneline --decorate --graph --branches='*'"
alias go="git checkout"
alias gi="git commit"
alias gd="git diff"
alias gdp="git diff --patience"
alias gds="git diff --staged"
alias gm="git merge"
alias gt="git tag"
alias stash="git stash -u"
alias stashp="git stash pop"
alias stashl="git stash list --oneline --decorate"
#tmux
alias tm="tmux"
alias ts="tmux list-sessions"
alias ta="tmux attach"
# ctags
alias ctags="ctags-exuberant --extra=+f -R"
