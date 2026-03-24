# GitHub 上传说明

这个目录是我帮你整理好的 `GitHub 上传专用包`。

## 你要上传哪一部分

请进入下面这个目录：

`repo-root/`

然后把 `repo-root/` 里面的所有文件和文件夹全选，直接拖到 GitHub 新仓库页面上传。

不要上传当前项目原目录里的这些内容：

- `.git/`
- `node_modules/`
- `.DS_Store`
- `PLAN.md`

## repo-root 里的分类

### 1. GitHub 识别的根目录文件

- `README.md`
- `README.zh-CN.md`
- `LICENSE`
- `CONTRIBUTING.md`
- `SECURITY.md`
- `CHANGELOG.md`
- `CODE_OF_CONDUCT.md`
- `package.json`
- `package-lock.json`
- `.gitignore`

### 2. GitHub 配置目录

- `.github/`
  - `ISSUE_TEMPLATE/`
  - `pull_request_template.md`
  - `workflows/build.yml`

### 3. 核心源码

- `src/`
  - 包含你这版的 `macOS 适配`
  - 包含你这版的 `speech bubble` 相关文件

### 4. Claude Hook 相关

- `hooks/`

### 5. 资源文件

- `assets/`

### 6. 手动测试脚本

- `test-demo.sh`
- `test-macos.sh`
- `test-mini.sh`

## 这份上传包的定位

这份上传包已经按“适合公开到 GitHub”的方式筛过一遍，目标是：

- 保留开源仓库该有的说明文件
- 保留源码、资源、hooks、workflow
- 去掉本地开发和临时文件

## 上传前最后检查一次

你只需要再看两个点：

1. `package.json` 里的 GitHub 仓库地址是不是你自己的
2. `README.md` 里的 clone / Releases 链接是不是你自己的

如果你愿意，我下一步可以直接把这两个地方也替你改成你的 GitHub 仓库名。
