# general
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls -xX --color=auto'
fi
alias quit=' exit'
alias tree=' tree --dirsfirst'
alias sa='sudo apt-get'
alias ll='ls -oh'
alias la='ls -A'
alias l1='ls -F -1 --group-directories-first'
alias ack='ack-grep'
alias a='ack-grep'
alias -- -='cd -'
alias fg=' fg'
alias pd=pushd
alias pod=popd

alias vi=' vi'

# go is `git checkout`
alias golang='/usr/local/go/bin/go'

# ruby
alias ri='ri -Tf ansi'
alias gemset='rvm gemset'
alias serve='ruby -run -e httpd . -p 3000'
# rails
alias r='bin/rails'
alias rk='bin/rake'
alias rp='bin/rspec'
alias sp='bin/spring'

alias rs='bin/rails s'
alias rc='bin/rails c'
alias rg='bin/rails g'
alias rcs='bin/rails c --sandbox'
alias rdc='bin/rails dbconsole'

# git
alias gs='git status'
alias gss='git status --short'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gl="git --no-pager log --oneline --decorate --graph --branches='*' -30"
alias glf="git log --oneline --decorate --graph --branches='*'"
alias go='git checkout'
alias gi='git commit'
alias gd='git diff'
alias gdc='git diff --word-diff-regex=.' # char diff
alias gdp='git diff --patience'
alias gds='git diff --staged'
alias gdw='git diff --ignore-all-space'
alias gm='git merge'
alias gt='git tag'
alias stash='git stash -u'
alias stashp='git stash pop'
alias stashl='git stash list --oneline --decorate'
#tmux
alias tm='tmux'
alias ts='tmux list-sessions'
alias ta='tmux attach'
# other
alias ctags='ctags-exuberant --extra=+f -R'
alias node='node --harmony'
