return {
	-- 发布版本使用这一行：
	"wsgggws/sparks.nvim",

	-- 本地开发版本使用 dir；不要同时启用上面的仓库地址
	-- dir = vim.fn.expand("~/github/sparks.nvim"),

	event = "VeryLazy",

	opts = {
		-- 可选：zen < subtle < power < streamer (动画强度、粒子数量、持续时间、Combo 和屏幕震动效果)
		preset = "power",

		-- 默认位置是右侧中间
		-- 可选：top-right、right-center、bottom-right、cursor
		position = "right-center",

		-- 私人彩蛋映射
		triggers = {
			["@"] = "nghuhu",
			["!"] = "nghuhu",
			["*"] = "nghuhu",
			[">"] = "nghuhu",
			["."] = "nghuhu",
			['"'] = "nghuhu",
			["h"] = "nghuhu",
			["j"] = "nghuhu",
			["+"] = "shenyiao",
			["`"] = "shenyiao",
			["-"] = "shenyiao",
			["="] = "shenyiao",
			["'"] = "shenyiao",
			["^"] = "shenyiao",
			["s"] = "shenyiao",
			["y"] = "shenyiao",
			["/"] = "yueyue",
			["\\"] = "yueyue",
			["("] = "yueyue",
			["{"] = "yueyue",
			[","] = "yueyue",
			["~"] = "yueyue",
			["u"] = "yueyue",
			["e"] = "yueyue",
			["&"] = "manman",
			["?"] = "manman",
			["["] = "manman",
			["<"] = "manman",
			[";"] = "manman",
			[":"] = "manman",
			["m"] = "manman",
			["a"] = "manman",
			["n"] = "manman",
		},
	},
}
