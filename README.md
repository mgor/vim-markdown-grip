# Vim Markdown Grip

## Intro

I wanted an easy way to preview Markdown documents while writing them. I came across `grip` (that uses GitHub for styles) and also `vim-markdown-preview`. I combined features from `grip` with the parts I liked with `vim-markdown-preview` and the result is this plugin.

Other from that, I also added to possibility to convert a Markdown document to PDF using `markdown-pdf`. Thanks to the CSS from `github-markdown-css` the result is quite like how it would've been rendered on GitHub.

## Installation

* With [Pathogen](https://github.com/tpope/vim-pathogen): Place `vim-markdown-grip/` in `.vim/bundle/`.
* With [Vundle](https://github.com/VundleVim/Vundle.vim):
    * Add `Plugin 'mgor/vim-markdown-grip'` to your `.vimrc`.
    * Launch `vim` and run `:PluginInstall`

## Usage

By default, when opening and saving a `.markdown` or `.md` file, `grip` will automatically start and open the preview in your default browser. When you close the opened file, `grip` will be stopped. However you'd have to close the preview manually in your browser.

It is possible to convert a markdown document to pdf (using `markdown-pdf`) and then open it for preview (using `xdg-open`) with the key shortcut <kbd>F12</kbd>.

## Requirements

* [grip](https://github.com/joeyespo/grip):

   `sudo -H pip3 install grip`

* [markdown-pdf](https://github.com/alanshaw/markdown-pdf):

   `sudo npm install -g markdown-pdf`

* [wmctrl](http://packages.ubuntu.com/search?keywords=wmctrl):

    `sudo apt install wmctrl`

## Credits

This project was inspired by [JamshedVesuna/vim-markdown-preview](https://github.com/JamshedVesuna/vim-markdown-preview).

The CSS that is used by `markdown-pdf` to replicate GitHub markdown style comes from [sindresorhus/github-markdown-css](https://github.com/sindresorhus/github-markdown-css).
