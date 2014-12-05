#INSTALL PATH
INSTALL_PATH=~/Developer/utilities/macos

# install bash profile
ln -s $INSTALL_PATH/.bash_profile ~/.bash_profile
source ~/.bash_profile

# install vim configuration
ln -s $INSTALL_PATH/.vimrc ~/.vimrc
ln -s $INSTALL_PATH/.vim ~/.vim
