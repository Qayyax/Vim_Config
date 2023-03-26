# Vim_Config

All, you need to do is save the file to .config/nvim in your root directory

Before you open nvim, you need to install vim-plug in your terminal

<h2> How to install vim-plug </h2>
<hr>

Open a terminal and run the following command to download the vim-plug plugin manager:

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
This will download the plug.vim script and save it to the ~/.vim/autoload/ directory.

Once the download is complete,open nvim and run the command :PlugInstall

For the autocomplete and intelliscience, check the init.vim file with the comment on how to use CocInstall

Comments in init.vim start with "

<h3> Thank you </h3>
