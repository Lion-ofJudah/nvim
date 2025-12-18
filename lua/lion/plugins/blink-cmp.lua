return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		keymap = { preset = "super-tab" },
		appearance = {
			nerd_font_variant = "normal",
		},
		completion = {
			documentation = {
				auto_show = true,
			},
			menu = {
				draw = {
					columns = {
						{ "kind_icon", "label", gap = 1 },
						{ "kind" },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								local icon = require("lion.config.icons").kind[ctx.kind] or " "
								return " " .. icon .. " "
							end,
							highlight = function(ctx)
								return "CmpItemKind" .. (ctx.kind or "")
							end,
							ellipsis = false,
						},
					},
				},
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
