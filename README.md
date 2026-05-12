<div align="center">
  <h3>
    Mapo
  </h3>
  <p>A dark colorscheme inspired by the midnight streets of Seoul.</p>
</div>

## Installation

Using Neovim 0.12's `vim.pack`

```vim
vim.pack.add { { src = "https://github.com/jxdones/mapo", name = "mapo" } }
```

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "jxdones/mapo",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme mapo")
  end,
}
```
`priority = 1000` ensures the colorscheme loads before other plugins.

[vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'jxdones/mapo'
```

Then in your config:

```vim
colorscheme mapo
```

### Manual

**Neovim:**
```
git clone https://github.com/jxdones/mapo ~/.local/share/nvim/site/pack/plugins/start/mapo
```

**Vim:**
```
git clone https://github.com/jxdones/mapo ~/.vim/pack/plugins/start/mapo
```

Then add to your config:
```vim
colorscheme mapo
```

**Zed:**

First run `git clone https://github.com/jxdones/mapo`, then:

macOS and Linux:
```
mkdir -p ~/.config/zed/themes
cp zed/themes/mapo.json ~/.config/zed/themes/mapo.json
```

Windows:
```
%USERPROFILE%\AppData\Roaming\Zed\themes\mapo.json
```

Restart Zed, then open the theme selector with `cmd-k cmd-t` on macOS or
`ctrl-k ctrl-t` on Linux/Windows and select `Mapo`.

## Requirements

- Vim 8+ or Neovim 0.8+
- `termguicolors` enabled for true color support (set automatically on Neovim)
