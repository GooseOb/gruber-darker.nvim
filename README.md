# gruber-darker.nvim

![](https://github.com/user-attachments/assets/baf7d6dd-297f-4a6b-b42d-8d0a1b7db00b)

This plugin borrows highlight colors from [blazkowolf/gruber-darker.nvim](https://github.com/blazkowolf/gruber-darker.nvim) with little changes to them. New features are:

- transparency support
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) integration.
- easier override of highlight groups via `overrides` function.

Initially, I wanted to contribute to the `blazkowolf` version but found the code to be too complicated

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
	terminalColors = true,
	bold = true,
	invert = {
		signs = false,
		tabline = false,
		visual = false,
	},
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
		others = true,
	},
    -- you can also disable italics completely
    -- italic = false
	undercurl = true,
	underline = true,
	overrides = function(colors)
        return {
            -- Example highlight override
            NormalFloat = { bg = colors.bg, fg = colors.fg },
        }
	end,
}
```
