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
I use comma "," as <leader> key. Here are my cheatsheet

1. jj or jk (switch from insert mode as press <ESC>, useful to MacBook touchbar)
2. <leader>a (:Ag, fuzzy search code), <leader>f (:Files search files), :Tags (search ctags -R . generated)
3. <leader>v (:Vexplore open file system tree)
4. <Space><Space> (vertical resize window up), <Backspace><Backspace> (vertical resize window down)
5. <SPACE>1 (horizontal resize window down), <Space>2 (horizontal resize window up)
6. <SPACE>= (<C-w>= make window equal size), <C-w><C-w> (default for jump between windows)
6. <leader>x (close current window), <leader>q (close current buffer)
7. <leader>w (:w! save to file)
8. <leader>n (:normal used in visual mode multiple lines)
(to be continue...)
```
