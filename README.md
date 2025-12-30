# gruber-darker.nvim

I wanted to contribute to the [blazkowolf/gruber-darker.nvim](https://github.com/blazkowolf/gruber-darker.nvim) but found the code to be too complicated

This plugin borrows highlight colors from the `blazkowolf` version with little changes to them. New features are:

- transparency support
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) integration.

It is planned to add config features that are present in [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) config options

> [!Warning]
> For now it doesn't support most of the config options from above-mentioned plugins except those mentioned in the Configuration section

## Installation

### Lazy

Add `opts` table or `config` function if you want to customize the theme

```lua
{
    "gooseob/gruber-darker.nvim",
    lazy = false,
    init = function()
        require("gruber-darker").load()
    end
}
```

## Configuration

```lua
{
        transparent = false,
        overrides = function(colors)
            return {
                -- Custom highlights
                NormalFloat = { bg = colors.bg, fg = colors.fg },
            }
        end,
}
```
