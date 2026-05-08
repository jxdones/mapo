<div align="center">
  <h3>
    Mapo
  </h3>
  <p>A dark colorscheme inspired by the midnight streets of Seoul.</p>
</div>

## Installation

### lazy.nvim

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

### vim-plug

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

## Requirements

- Vim 8+ or Neovim 0.8+
- `termguicolors` enabled for true color support (set automatically on Neovim)
