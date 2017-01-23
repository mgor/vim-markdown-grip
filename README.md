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

### GitHub API rate limit

To get around the GitHub API request limit (for un-authenticated usage), it is highly recommended that you [generate an access token](https://github.com/joeyespo/grip/issues/35) for GitHub and creates `~/.grip/settings.py`:

```
PASSWORD = '<access token>'
```

### Convert to PDF

Convert your markdown document to a PDF by pressing <kbd>Ctrl</kbd> + <kbd>m</kbd> + <kbd>p</kbd>. This will generate a PDF document using [`markdown-pdf`](https://github.com/alanshaw/markdown-pdf) with [GitHub markdown styling](https://github.com/alanshaw/markdown-pdf).

### Generate ToC

Insert the notation `<!-- toc -->` in your document where the table of contents should be placed. Press <kbd>Ctrl</kbd> + <kbd>m</kbd> + <kbd>t</kbd> to generate ***or*** update the ToC. This is done by using [`markdown-toc`](https://github.com/jonschlinkert/markdown-toc).

## Requirements

* [grip](https://github.com/joeyespo/grip):

    `sudo -H pip3 install grip`

* [markdown-pdf](https://github.com/alanshaw/markdown-pdf):

    `sudo npm install -g markdown-pdf`

* [markdown-toc](https://github.com/jonschlinkert/markdown-toc):
    
    `sudo npm install -g markdown-toc`

* [wmctrl](http://packages.ubuntu.com/search?keywords=wmctrl):

    `sudo apt install wmctrl`

## Credits

This project was inspired by [JamshedVesuna/vim-markdown-preview](https://github.com/JamshedVesuna/vim-markdown-preview).

The CSS that is used by `markdown-pdf` to replicate GitHub markdown style comes from [sindresorhus/github-markdown-css](https://github.com/sindresorhus/github-markdown-css).
