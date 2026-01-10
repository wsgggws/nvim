# nvim 配置

> 🚀 基于 [lazy.nvim](https://github.com/folke/lazy.nvim) 和 [LazyVim](https://github.com/LazyVim/LazyVim) 的现代 Neovim 配置，专为极致效率与舒适体验而打造！

---

## ✨ 特性亮点

- **模块化插件管理**：所有自定义插件集中于 [`lua/plugins`](lua/plugins) 目录，官方插件锁定在 [`lazy-lock.json`](lazy-lock.json)。
- **开箱即用的现代开发体验**：涵盖 LSP、代码格式化、项目管理、多光标编辑、终端集成等。
- **多种配色方案**：支持 catppuccin、tokyonight、gruvbox、dracula、solarized 等主流主题，自动适配终端环境。
- **高效键位映射**：常用操作一键直达，窗口/终端/多光标/代码运行等全覆盖。
- **极简配置入口**：只需 `init.lua` 一行，轻松加载所有配置。

---

## 📦 插件一览（精选）

- **LSP & 代码诊断**
  - [`nvim-lspconfig`](lua/plugins/nvim-lspconfig.lua)：主流语言智能补全与诊断
  - [`diagflow`](lua/plugins/diagflow.lua)：行内诊断提示，专注当前行
  - [`conform.nvim`](lua/plugins/conform.lua)：自动格式化，支持 Python、Go 等

- **项目与环境管理**
  - [`projectmgr.nvim`](lua/plugins/projects.lua)：项目切换与会话管理
  - [`venv-selector.nvim`](lua/plugins/venv-select.lua)：Python 虚拟环境一键切换

- **多光标与文本操作**
  - [`multicursors.nvim`](lua/plugins/multicursors.lua)：多光标编辑
  - [`vim-surround`](lua/plugins/surround.lua)：快速包裹/修改括号引号
  - [`open-browser.vim`](lua/plugins/open-browser.lua)：选中文本一键浏览器搜索

- **代码运行与终端**
  - [`code_runner.nvim`](lua/plugins/code-runner.lua)：多语言代码一键运行
  - [`winresizer`](lua/plugins/winresizer.lua)：窗口大小随心调整

- **Fuzzy Finder & Diff**
  - [`fzf-lua`](lua/plugins/fzf-lua.lua)：极快模糊查找
  - [`diffview.nvim`](lua/plugins/diffview.lua)：Git 变更可视化

- **配色主题**
  - [`colorschema.lua`](lua/plugins/colorschema.lua)：多主题切换，自动适配终端

> 更多插件详见 [`lua/plugins`](lua/plugins) 目录，部分插件按需启用或已禁用，详见 [`disabled.lua`](lua/plugins/disabled.lua)。

---

## 🚀 快速开始

1. **克隆本仓库到你的 Neovim 配置目录**

   ```sh
   git clone <your-repo-url> ~/.config/nvim
   ```
