### Get the code ###
```
#!bash

$ mkdir ~/.vim
$ cd ~/.vim
$ hg clone https://buruzaemon@bitbucket.org/buruzaemon/me-vimrc .
$ cd
$ ln -s .vim/etc/vimrc ~/.vimrc
```

### Soft link for `.hgrc` ###
`cacert.pem` included at `etc/cacert.pem`.
c.f. [http://curl.haxx.se/ca/cacert.pem](http://curl.haxx.se/ca/cacert.pem)
```
#!bash
$ ln -s .vim/etc/hgrc ~/.hgrc
```

### Soft link for `.pythonrc.py` ###
```
#!bash
$ ln -s .vim/etc/pythonrcpy ~/.pythonrc.py
export PYTHONSTARTUP=~/.pythonrc.py
```

### Soft link for `.irbrc` ###
You should install that [interactive_editor](http://vimcasts.org/episodes/running-vim-within-irb/) gem.
```
#!bash
$ ln -s .vim/etc/irbrc ~/.irbrc
```

### Soft link for `.csirc` ###
Chicken Scheme. Make sure you have the `readline` and `(ir)regex` eggs installed.
```
#!bash
$ ln -s .vim/etc/csirc ~/.csirc
$ touch ~/.csi.history
```