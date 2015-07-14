# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random 
#	theme each time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Adjust path for java 
# JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"
export JAVA_HOME=$(/usr/libexec/java_home) 
# PATH=${PATH}:${JAVA_HOME}/bin

# Aliases
alias l="ls -lFh"
alias evim='vim ~/.vimrc'
alias ezsh='vim ~/.zshrc'
alias rm="rm -i"	# Prompt interactive mode when using rm command. 
alias pt="sudo powertop"
alias etlp="sudo vim /etc/default/tlp"
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

# ZOO 
alias sshz="ssh kax2@node.zoo.cs.yale.edu"
alias sshx="ssh -X kax2@node.zoo.cs.yale.edu"

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

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

