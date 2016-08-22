[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

alias tmux="TERM=screen-256color-bce tmux" #This corrects colors in screen session

#########
#
# MY SCRIPTS
#

#Opens vim env within tmux
alias ss="~/dotfiles/scripts/vim_env"

#bundle exec
alias be="bundle exec"

#git log oneline <git lg>
git config --global alias.lg "log --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#git log oneline w/graph <git lgg>
git config --global alias.lgg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"


#bundle open
function bo {
  cd `bundle show $1`
  nvim -c 'NERDTreeToggle|wincmd h'
  cd -
}

#VIM
alias v="nvim"
alias vim="nvim"

#This corrects colors in screen session
alias tmux="TERM=screen-256color-bce tmux"

# jump to rails directory
alias rd="cd ~/Documents/rails/"

# jump to weblinc directory
alias wd="cd ~/Documents/weblinc/"

#Open Pathfinder in termainal with pf
alias pf="open -a \"Path Finder.app\""

#Open Pathfinder in termainal with pf
alias vdif="~/dotfiles/vdif"

# recursive grep that excludes logs and binaries
gr() { grep -r --exclude=\*.{log,cache,png,jpg} "$1" *; }

# recusive grep for ruby files
grr() { find . -type f -name '*.rb' -exec grep "$1" /dev/null {} +; }

# c => copies last command to clipboard
c() { history -p '!!'|tr -d \\n|pbcopy; }

#Restart Pow
alias rp="echo 'restarting pow!'; touch tmp/restart"

#restart mongo
alias smongod="echo 'starting mongo...'; sudo launchctl start org.mongo.mongod"

#
#########

MYSQL=/usr/local/Cellar/mysql/5.7.12/bin
#FIXES RAILS ISSUES
export DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql/5.7.12/lib"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/Cellar/mysql/5.7.12/bin:$PATH"

export EDITOR=nvim

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

PATH=/opt/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
