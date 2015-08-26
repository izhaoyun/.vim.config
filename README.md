Steps for setting up the vim configuration
==================

1. create a local clone 
	
	```sh
		$ git clone git@github.com:izhaoyun/vim-configurations.git .vim
	```

2. set up vundle

	```sh
		$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
	```

3. install plugins
	
	Launch vim and run `:PluginInstall`


4. set up ycm
	
	```sh
		$ cd ~/.vim/bundle/YouCompleteMe
		$ ./install.sh --clang-completer
	```

