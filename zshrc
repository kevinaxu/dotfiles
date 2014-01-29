# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
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

# Added this on 5/16/13 to change colors of zsh. 
# autoload -U colors && colors
# PROMPT="%{$fg[yellow]%}"
# PS1="%{$fg[blue]%}%n%{$green%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$yellow%}%% "

# setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
# HISTSIZE=1000
# SAVEHIST=1000
# HISTFILE=~/.zsh_history

# Use modern completion system
# autoload -Uz compinit
# compinit

# Aliases
alias ls='ls -F'
alias v="vim"
alias evim='vim ~/.vimrc'
alias ezsh='vim ~/.zshrc'
alias ebsh='vim ~/.bashrc'
alias rm="rm -i"	# Prompt interactive mode when using rm command. 
alias pt="sudo powertop"
alias etlp="sudo vim /etc/default/tlp"
alias redshift="redshift -l 0:0 &"
alias rmdir="rm -rfi"

# ZOO 
alias sshz="ssh kax2@node.zoo.cs.yale.edu"
alias sshx="ssh -X kax2@node.zoo.cs.yale.edu"
alias kax2="kax2@node.zoo.cs.yale.edu:"
scpz() {
	for dir; do true; done
	length=$(($#-1))
	array=${@:1:length}
	scp $array kax2@node.zoo.cs.yale.edu:/home/accts/kax2/$dir
}

# Jumping wiht symbolic links:
# jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
# export MARKPATH=$HOME/.marks
# function jump {
# 	cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
# }
# function mark {
# 	mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
# }
# function unmark {
# 	rm -i "$MARKPATH/$1"
# }
# function marks {
# 	ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' &# & echo 
# }
# Set up autocomplete for jump/unmark functions. 
# function _completemarks {
# 	reply=($(ls $MARKPATH))
# }
# compctl -K _completemarks jump
# compctl -K _completemarks unmark

#stty -ixon
