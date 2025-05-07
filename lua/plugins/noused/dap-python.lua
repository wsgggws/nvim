return {
	"mfussenegger/nvim-dap-python",
	config = function(_, _)
		require("dap-python").setup(os.getenv("MYPYTHON"))
		require("dap-python").resolve_python = function()
			return os.getenv("MYPYTHON")
		end
		-- require("dap-python").setup("/opt/homebrew/bin/python3.9")
		local crawler_env = {
			["PYTHONPATH"] = ".:crawler",
			["DEFAULT_ENV_FOR_DYNACONF"] = "default",
			["ROOT_PATH_FOR_DYNACONF"] = "config",
			["NEW_RELIC_ENVIRONMENT"] = "development",
			["ENV_FOR_DYNACONF"] = "development",
			["CONFIG_CENTER_DEBUG"] = "true",
			["CONFIG_CENTER_ENV"] = "development",
			[os.getenv("KEY1")] = os.getenv("VALUE1"),
			[os.getenv("KEY2")] = os.getenv("VALUE2"),
			[os.getenv("KEY3")] = os.getenv("VALUE3"),
			[os.getenv("KEY4")] = os.getenv("VALUE4"),
		}
		table.insert(require("dap").configurations.python, {
			type = "python",
			request = "launch",
			name = "Debug Poll Main",
			cwd = os.getenv("CWD"),
			program = os.getenv("PROGRAM"),
			env = crawler_env,
			justMyCode = false,
			-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
		})
		table.insert(require("dap").configurations.python, {
			type = "python",
			request = "launch",
			name = "Debug pytest cur file",
			module = "pytest",
			args = { "-vv", "${file}" },
			env = crawler_env,
			justMyCode = false,
		})
		table.insert(require("dap").configurations.python, {
			type = "python",
			request = "launch",
			name = "Debug scrapy runspider",
			module = "scrapy",
			args = { "runspider", "${file}" },
			justMyCode = false,
		})
	end,
}
