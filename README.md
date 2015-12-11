# SignalFx SignalFlow Vim syntax

Vim syntax file for [SignalFx](https://signalfx.com)'s SignalFlow
analytics language. Provides syntax highlighting for `.flow` SignalFlow
program text files.

## Installation

### Manual

To manually install the syntax file, simply place
`syntax/signalflow.vim` in your `~/.vim/syntax` directory and add the
following line to your `.vimrc`:

```vimrc
au BufNewFile,BufRead *.flow set filetype=signalflow
```

### With Pathogen

If you use [pathogen.vim](https://github.com/tpope/vim-pathogen):

```
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/signalfx/signalflow.vim.git
```

## License

Copyright (C) SignalFx, Inc. Distributed under the same terms as Vim
itself. See `:help license` for more information.
