## Configure your vim

This repo is to install a collection of useful vim plugins as well as the corresponding vim configuration file.
It is mainly used to bootstrap a new operating system such as ubuntu and macOS. Some of the softwares might need to install manually depends on the platform.
Here are a list of them: golang, rust, cscope (for C++), ctags (for rust), fzf

### Install

```bash
chmod +x install.sh
./install.sh
```

### Useful commands

```bash
I use comma "," as <leader> key
1. jj or jk (switch from insert mode as press <ESC>, useful to MacBook touchbar)
2. <leader>a (:Ag, fuzzy search code), <leader>f (:Files search files), :Tags (search ctags -R . generated)
3. <leader>v (:Vexplore open file system tree)
4. <SPACE>[ (resize vertical window down), <SPACE>] (resize vertical window up), <leader>x (close current window), <leader>q (close current buffer)
5. <leader>w (:w! save to file)
(to be continue...)
```
