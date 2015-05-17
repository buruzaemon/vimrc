### Get the code ###
```
$ mkdir ~/.vim
$ cd ~/.vim
$ git clone https://github.com/buruzaemon/vimrc.git .
$ cd
$ ln -s ~/.vim/etc/vimrc ~/.vimrc
```

### Soft link for `.pythonrc.py` ###
```
$ ln -s ~/.vim/etc/pythonrcpy ~/.pythonrc.py
export PYTHONSTARTUP=~/.pythonrc.py
```

### Soft link for `.irbrc` ###
You should install that [interactive_editor](http://vimcasts.org/episodes/running-vim-within-irb/) gem.
```
$ ln -s ~/.vim/etc/irbrc ~/.irbrc
```

### Soft link for `.csirc` ###
Chicken Scheme. Make sure you have the `readline` and `(ir)regex` eggs installed.
```
$ ln -s ~/.vim/etc/csirc ~/.csirc
$ touch ~/.csi.history
```
