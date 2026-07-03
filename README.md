# Neovim 配置

这是我的日常 Neovim 配置，基于 [LazyVim](https://www.lazyvim.org/) 和
[lazy.nvim](https://github.com/folke/lazy.nvim)。主要服务 Python 开发，同时兼顾 Go 和 Rust。

## 结构

- [init.lua](init.lua)：加载 `config.lazy`
- [lua/config](lua/config)：通用选项、快捷键、自动命令
- [lua/plugins](lua/plugins)：自定义插件配置
- [lazyvim.json](lazyvim.json)：LazyVim extras
- `lua/plugins/noused`：历史配置，仅作参考

## 重点能力

- **Python**：`pyright`、Ruff 格式化、`venv-selector.nvim` 虚拟环境选择、pytest/neotest、debugpy。
- **Go**：LazyVim Go extra、`goimports`/`gofmt`、neotest-golang、delve。
- **Rust**：LazyVim Rust extra、`rustfmt`、Cargo 项目优先 `cargo run`、rustaceanvim neotest、codelldb。
- **任务运行**：`code_runner.nvim` 跑当前文件，`overseer.nvim` 跑项目任务，`neotest` 跑测试，DAP 负责调试。
- **查找与文件**：`fzf-lua` 查找；`neo-tree` 做轻量项目树；`yazi.nvim` 做完整文件管理。
- **Git**：`diffview.nvim` 查看 diff/文件历史，`committia.vim` 增强提交信息编辑。
- **诊断**：关闭 LSP virtual text，通过 `diagflow.nvim` 只在当前行显示诊断。
- **文档注释**：`neogen` 为 Python/Go/Rust 生成 docstring、GoDoc、rustdoc 骨架。

## 常用快捷键

| 快捷键 | 作用 |
| --- | --- |
| `<leader>rr` | 运行当前文件 |
| `<leader>rq` | 关闭 code runner 窗口 |
| `<leader>or` | 选择并运行项目任务 |
| `<leader>ot` | 打开/关闭任务列表 |
| `<leader>os` | 运行临时 shell task |
| `<leader>oq` | 对任务执行 action |
| `<leader>tn` | 运行最近的测试 |
| `<leader>tf` | 运行当前文件测试 |
| `<leader>tA` | 运行当前项目所有测试 |
| `<leader>td` | DAP 调试最近的测试 |
| `<leader>db` | 切换断点 |
| `<leader>dc` | 开始或继续调试 |
| `<leader>du` | 切换 DAP UI |
| `<leader>cv` | 选择 Python 虚拟环境 |
| `<leader>cn` | 生成当前函数/类型注释 |
| `<leader>cN` | 生成文件级注释 |
| `<leader>ct` | 删除行尾空白 |
| `<leader>m` | 启动多光标 |
| `<leader>y` | 在当前文件位置打开 Yazi |
| `<leader>Y` | 在当前 cwd 打开 Yazi |
| `<leader>gH` | 查看当前文件 Git 历史 |
| `<leader>gO` | 打开 Diffview |
| `<leader>gq` | 关闭 Diffview |
| `<leader>gu` | 用浏览器打开当前 URL 或文本 |
| `<leader>gw` | 用浏览器搜索当前词或选中文本 |

### 自定义编辑键

| 快捷键 | 模式 | 作用 |
| --- | --- | --- |
| `<C-l>` | Insert | 移到行首 |
| `<C-a>` | Insert | 移到当前行第一个非空白字符 |
| `<C-e>` | Insert | 移到行尾 |
| `<C-S-h>` | Normal | 当前窗口向左缩小 |
| `<C-S-l>` | Normal | 当前窗口向右扩大 |
| `<C-S-j>` | Normal | 当前窗口向下扩大 |
| `<C-S-k>` | Normal | 当前窗口向上缩小 |
| `gcs` | Normal | 给当前行切换 `# fmt: skip` |

## 日常工作流

- 当前文件临时运行：`<leader>rr`
- 项目级命令：`<leader>or` 或 `<leader>os`，例如 `uv run pytest`、`go test ./...`、`cargo clippy`
- 测试：`<leader>tn`、`<leader>tf`、`<leader>tA`
- 调试：`<leader>db` 加断点，`<leader>dc` 启动/继续，`<leader>du` 打开 UI
- Python 环境：`<leader>cv` 选择 venv
- 文档注释：在函数、类型或类上按 `<leader>cn`
- 文件管理：轻量浏览用 `neo-tree`，批量操作用 `<leader>y` 打开 Yazi

## 插件版本

插件版本由 `lazy-lock.json` 固定。启动 Neovim 时不会自动检查插件更新；需要更新时手动运行：

- `:Lazy check`：只检查可更新插件
- `:Lazy update`：更新插件并刷新 `lazy-lock.json`
- `:Lazy sync`：按配置安装、清理和更新插件

## 本地配置

私有项目的 autoformat 开关放在 `lua/config/local.lua`，该文件被 git 忽略。示例见
[lua/config/local.example.lua](lua/config/local.example.lua)。

Go 文件会自动使用 tab 缩进；`TrimWhitespace` 会清理行尾空白并保持视图位置。

## 安装依赖

```sh
git clone <repo-url> ~/.config/nvim
nvim
```

建议提前准备：

- 与当前 LazyVim 版本兼容的 Neovim
- `git`、`fzf`、`rg`、`yazi`
- Python、Go、Rust 工具链
- `ruff`、`goimports`、`rustfmt`、`clippy`
- `debugpy`、`delve`、`codelldb`
- Nerd Font

## TODO

- 观察 `faster.nvim` 的收益；如果启动或输入体验异常，再用 `:StartupTime` 对比。
- 继续把真实高频的 LazyVim/LSP/Git 快捷键沉淀到 README。
- 复杂项目按需补 `.vscode/launch.json` 或 Overseer task 模板。
