"""Installation instructions

- Git pull
- cd ~
- ln -s dotfiles/.bash_git .bash_git
- ln -s dotfiles/.bash_profile .bash_profile
- ln -s dotfiles/.bashrc .bashrc
- ln -s dotfiles/.tmux.conf .tmux.conf
- ln -s dotfiles/.git-completion.bash .git-completion.bash


# Bindings
* `ss` - splits tmux twice and opens vim with nerdtree
* `Option+Shift+q` - closes out current tmux pane


# Install Karabiner & Seal
After you install we need to source the config so
you can use shortcuts like `Option+Shift+q`\
Find the directory with the source files\
`cd ~/Library/Application\ Support/Karabiner/`\
If `private.xml` exists, delete it, then run:\
`ln -s ~/dotfiles/karabiner/private.xml private.xml`
