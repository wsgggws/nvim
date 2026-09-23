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

		-- 你的私人彩蛋映射，完整保留
		triggers = {
			["@"] = "nghuhu",
			["/"] = "yueyue",
			["&"] = "manman",
			["+"] = "shenyiao",
			["\\"] = "yueyue",
			["?"] = "manman",
			["!"] = "nghuhu",
			["`"] = "shenyiao",
			["-"] = "shenyiao",
			["*"] = "nghuhu",
			["("] = "yueyue",
			["["] = "manman",
			["{"] = "yueyue",
			["<"] = "manman",
			[">"] = "nghuhu",
			["="] = "shenyiao",
			[";"] = "manman",
			[","] = "yueyue",
			["."] = "nghuhu",
			["'"] = "shenyiao",
			['"'] = "nghuhu",
			[":"] = "manman",
			["~"] = "yueyue",
			["^"] = "shenyiao",
		},
	},
}
