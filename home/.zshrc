# Path to your oh-my-zsh installation.
export ZSH=/Users/brett/.oh-my-zsh
export EDITOR='vim'
export KEYTIMEOUT=1
export GROOVY_HOME=/usr/local/opt/groovy/libexec

ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export PATH="/Users/brett/bin:$PATH"
export PATH="/Applications/Firefox.app/Contents/MacOS:$PATH"
export HOMEBREW_GITHUB_API_TOKEN="eeb8391a28f4e26110c10b535228ef0a8975eaf7"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
eval "$(docker-machine env default)"
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(rbenv init -)"

alias fs="foreman start -f Procfile.mine"
alias be="bundle exec"
alias dkc="docker-compose"
alias pts="git pull origin master:master && git push heroku-staging master:master && heroku run rake db:migrate"
alias tstart="tmux -S /tmp/tmux-session"
alias tjoin="tmux -S /tmp/tmux-session attach"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Powerline
# powerline-daemon -q
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export NVM_DIR="/Users/brett/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
