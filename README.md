# Vim Markdown Grip 

## Intro

This project was inspired by [JamshedVesuna/vim-markdown-preview](https://github.com/JamshedVesuna/vim-markdown-preview).
But I only wanted live preview, using `grip` built-in "webserver".

## Installation

* With [Pathogen](https://github.com/tpope/vim-pathogen): Place `vim-markdown-grip/` in `.vim/bundle/`.
* With [Vundle](https://github.com/VundleVim/Vundle.vim):
    * Add `Plugin 'mgor/vim-markdown-grip'` to your `.vimrc`.
    * Launch `vim` and run `:PluginInstall`

## Usage

By default, when opening and saving a `.markdown` or `.md` file, `grip` will automatically start and open the preview in your
default browser. When you close the opened file, `grip` will be stopped. However you'd have to close the preview manually in your browser.

It is possible to convert a markdown document to pdf (using `markdown-pdf`) and then open it for preview (using `xdg-open`) with the key shortcut `<F12>`.

## Requirements

* [grip](https://github.com/joeyespo/grip):

   `sudo -H pip3 install grip`

* [markdown-pdf](https://github.com/alanshaw/markdown-pdf):

   `sudo npm install -g markdown-pdf`

