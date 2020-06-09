# general

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls -xX --color=auto'
fi

alias reload!='source ~/.zshrc'

alias j=' jobs'
alias quit=' exit'
alias o='gvfs-open'
alias tree='tree --dirsfirst'
alias sa='sudo apt' #-get'
alias ll='ls -oh'
alias la='ls -A'
alias l1='ls -F -1 --group-directories-first'
alias ack='ack-grep'
alias a='ack-grep'
alias -- -='cd -'
alias fg=' fg'
alias pd=pushd
alias pod=popd
alias dirsize='du -sh'
alias gnome-open='xdg-open'
alias fproc='ps -e | ag'
# alias ccat='highlight -O ansi'
alias cat=bat
alias agi='ag -i'

alias v='vim .'

alias t=task

alias dcu='docker-compose up -d'

# alias vis='vim -S Session.vim'
alias vix='vim -x'
alias viu='vim -u NONE'

alias sr='scripts/run.sh'

# ruby
alias ri='ri -Tf ansi'
alias gemset='rvm gemset'
alias bi='bundle install --jobs=4'
alias rubocop='rubocop -P'

# rails
alias r='bin/rails'
alias rk='bin/rake'
alias rp='bin/rspec'
alias sp='bin/spring'
alias rs='bin/rails s'
alias rc='bin/rails c'
# alias rg='bin/rails g'
alias rcs='bin/rails c --sandbox'
# alias rdc='bin/rails dbconsole'
alias hrc='heroku run rails console'
alias hrcs='heroku run rails console --sandbox'
alias mig='bin/rake db:migrate'
alias rbk='bin/rake db:rollback'
alias seed='bin/rails db:schema:load && rails db:seed'

# elixir
alias imix='iex -S mix'

# alias vs='vagrant status'
# alias vu='vagrant up'

# git
alias g='git status'
alias gs='git status'
alias gss='git status -sb'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add --all'
alias gb='git branch'
alias gl="git --no-pager log --oneline --decorate --graph --branches='*' -20"
alias gll="git log --oneline --decorate --graph --branches='*'"
alias go='git checkout'
alias gom='git checkout master'
alias gi='git commit'
alias gia='git commit --amend'
alias gian='git commit --amend --no-edit'
alias gd='git diff --indent-heuristic -M'
alias gdc='git diff --word-diff-regex=.' # char diff
alias gdp='git diff --patience'
alias gds='git diff --staged'
alias gdw='git diff --ignore-all-space'
alias gdo='git diff --word-diff'
alias gdx='git diff -G.' # -> ignore permission changes
alias gm='git merge'
alias gf='git fetch --prune --all'
alias gt='git tag'
alias stash='git stash -u'
alias stashp='git stash pop'
alias stashl='git stash list --oneline --decorate'

#tmux
alias tm='tmux'
alias ts='tmux list-sessions'
alias ta='tmux attach'

# other
# alias ctags='ctags-exuberant --extra=+f -R'
alias node='node --harmony --use-strict'
