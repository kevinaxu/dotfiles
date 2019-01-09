# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random 
#	theme each time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="bira"

# Aliases
alias c='clear'
alias ls="ls -ltFh"
alias l="ls -ltFh"
alias v='vim'
alias evim='vim ~/.vimrc'
alias ezsh='vim ~/.zshrc'
alias szsh='source ~/.zshrc'
alias j='jump'
alias histg='history | grep '
alias histf='history | fzf '
alias cafe='caffeinate'

#feature flags
alias vflags='vim config/flags.ini'
alias gflags='git add config/flags.ini && git commit && git push origin'

# git stuff 
alias gs='git status'
alias gaf='git add $(fzf)'
alias gd='git diff'
alias gdc='git diff --cached'
alias gco='git checkout'
alias gr='git rebase'
alias gls='git log --stat'
alias glp='git log -p'
alias glpr='git log --pretty=oneline'
alias glg="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
alias gb='git branch'
alias gsl='git stash list'
alias gcp='git cherry-pick' 
alias gpo='git push origin'         # push.default = current 
alias gundo='git reset HEAD~'
alias gpum='git pull upstream master'

#website stuff
alias expose='/Users/kxu/kxu.io/Expose/expose.sh'

#tmux stuff
alias tm='tmux'

gss() {
    git stash show -p stash@{$1}
}

gsa() {
    git stash apply stash@{$1}
}
gsd() {
    git stash drop stash@{$1}
}

# raspberry pi
alias pi='ssh pi@192.168.0.23'
alias rmdir="rm -rfi"
alias svim="sudo vim"
alias clera="clear" 

# Failed DNS resolution 
alias dns="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist; sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd_helper.plist; sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd_helper.plist; sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist; sudo discoveryutil mdnsflushcache; sudo launchctl unload /Library/LaunchDaemons/dns_appender.plist; sudo launchctl load -w /Library/LaunchDaemons/dns_appender.plist"

# APACHE
alias apache="sudo apachectl"

# AVESTA 
alias avesta="php /Users/kevinxu/Dev/avesta/batch/avesta.php"

alias preview="open -a preview"

# because typing 'cd' is A LOT of work!!
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Keep 100,000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

export PROMPT='$PROMPT$(git-radar --zsh --fetch) '

#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(history 1 | cut -c8-)" >> ~/.logs/zsh-history-$(date "+%Y-%m-%d").log; fi'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#
# jump: 
#	[jump] - jump to a mark 
#	[mark] - create a mark
#	[unmark] - delete a mark 
#	[marks] - list all marks 
#
# sublime: 
#	[st] - Opens a specified file in sublime 
#	[stt] - Opens current directory in sublime 
#
# sudo: 
#	[esc] twice: Puts [sudo] in front of current command, or the last one if 
#		command line is empty 
# 
#plugins=(jump sudo sublime vi-mode)
plugins=(jump sudo sublime)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/Cellar/mysql/5.6.17_1/bin:$PATH

# Add composer link to path so 'laravel' command works 
export PATH=~/.composer/vendor/bin:$PATH

# Change editor mode to vim 
# set -o vi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

# setopt histignorealldups sharehistory

# Use modern completion system
# autoload -Uz compinit
# compinit

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
