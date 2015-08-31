[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias tmux="TERM=screen-256color-bce tmux" #This corrects colors in screen session


#########
#
# MY SCRIPTS
#

#Opens vim env within tmux
alias ss="~/dotfiles/scripts/vim_env"

#This corrects colors in screen session
alias tmux="TERM=screen-256color-bce tmux" 

# jump to rails directory
alias rd="cd ~/Documents/rails/"

#Open Pathfinder in termainal with pf
alias pf="open -a \"Path Finder.app\""

#Open Pathfinder in termainal with pf
alias vdif="~/dotfiles/vdif"

# c => copies last command to clipboard
c() { history -p '!!'|tr -d \\n|pbcopy;  }

#
#########

MYSQL=/usr/local/mysql/bin
#FIXES RAILS ISSUES
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

export EDITOR=mvim

source ~/.bash_git
source ~/.git-completion.bash

PS1='\W$(__git_ps1 "(%s)")$ '
alias ls='pwd; ls -G'
alias ll="ls -lahG"
#alias vim='mvim'

alias kaudio="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"

# why would you type 'cd dir' if you could just type 'dir'?
#setopt AUTO_CD

# Spell check commands!  (Sometimes annoying)
#setopt CORRECT

# If I could disable Ctrl-s completely I would!
#setopt NO_FLOW_CONTROL

# Remember about a years worth of history (AWESOME)
SAVEHIST=10000
HISTSIZE=10000

# Save the time and how long a command ran
#setopt EXTENDED_HISTORY

#{{{ Prompt!

host_color=cyan
history_color=yellow
user_color=green
root_color=red
directory_color=magenta
error_color=red
jobs_color=green

##
# Your previous /Users/fzondlo/.bash_profile file was backed up as /Users/fzondlo/.bash_profile.macports-saved_2013-05-18_at_14:57:56
##

#export PATH=./bin:/Users/fzondlo/.rvm/gems/ruby-2.0.0-p195/bin:/Users/fzondlo/.rvm/gems/ruby-2.0.0-p195@global/bin:/Users/fzondlo/.rvm/rubies/ruby-2.0.0-p195/bin:/Users/fzondlo/.rvm/bin:/Applications/Postgres.app/Contents/MacOS/bin:/Users/fzondlo/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/mysql/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
