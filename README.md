# xmind_to_markdown_converter

> 在浏览器里双向转换 XMind 与 Markdown，无需安装任何依赖。

![License](https://img.shields.io/badge/license-MIT-green)
![No dependencies](https://img.shields.io/badge/dependencies-none-brightgreen)
![Pure HTML](https://img.shields.io/badge/built%20with-HTML%20%2F%20CSS%20%2F%20JS-orange)

---

## 功能

| 方向 | 说明 |
|------|------|
| **XMind → Markdown** | 上传 `.xmind` 文件，自动解析所有画布并导出为 `.md`，支持预览与一键复制 |
| **Markdown → XMind** | 上传 `.md` 文件，自动按一级标题拆分为多张画布，生成可直接导入 XMind 的 `.xmind` 文件 |

**亮点：**

- 🔒 完全本地运行，文件不上传任何服务器
- 📦 零依赖，单个 HTML 文件即可使用
- 🗂 多画布支持：XMind 多张画布 ↔ Markdown 多个 `#` 一级标题
- 🏷 可选手动画布分隔符 `<!-- sheet: 画布名称 -->`
- 🖨 Markdown 结果支持一键复制

---

## 快速开始

直接在浏览器打开 `index.html`，无需安装、无需服务器。

```bash
git clone https://github.com/1Astare/xmind_to_markdown_converter.git
cd xmind_to_markdown_converter
open index.html   # macOS
# 或双击文件在 Windows / Linux 打开
```

---

## 使用说明

### XMind → Markdown

1. 切换到「XMind → Markdown」标签
2. 拖拽或点击上传 `.xmind` 文件
3. 点击「开始转换」
4. 弹窗中预览结果，点击「复制内容」或「下载 .md 文件」

### Markdown → XMind

1. 切换到「Markdown → XMind」标签
2. 上传 `.md` / `.markdown` / `.txt` 文件
3. 工具自动按规则拆分画布，展开预览每张画布内容
4. 确认无误后点击「生成 XMind 文件」下载

#### 画布拆分规则

**自动模式**（无需修改文件）：每个 `#` 一级标题自动成为一张独立画布。

```markdown
# 产品规划        ← 画布 1
## 核心功能
### 功能 A

# 竞品分析        ← 画布 2
## 国内竞品
```

**手动模式**：用注释标记显式命名画布。

```markdown
<!-- sheet: 产品规划 -->
# 根节点
## 核心功能

<!-- sheet: 竞品分析 -->
# 根节点
## 国内竞品
```

#### Markdown 层级与 XMind 节点对应关系

| Markdown | XMind 节点层级 |
|----------|---------------|
| `#` 一级标题 | 根节点 |
| `## ` 二级标题 | 一级子节点 |
| `### ` 三级标题 | 二级子节点 |
| `- ` 列表项 | 三级及以下子节点（缩进决定深度） |
| `> ` 引用 | 节点备注（Notes） |

---

## 兼容性

| XMind 版本 | 内部格式 | 支持状态 |
|-----------|---------|---------|
| XMind 2020 及以上 | `content.json` | ✅ |
| XMind 8 / ZEN | `content.xml` | ✅ |

**浏览器要求：** 支持 `DecompressionStream` API 的现代浏览器（Chrome 80+、Edge 80+、Firefox 113+、Safari 16.4+）。

---

## 文件结构

```
xmind_to_markdown_converter/
└── index.html   # 全部逻辑，单文件
```

生成的 `.xmind` 文件内部结构符合 XMind 2020 规范：

```
output.xmind (ZIP)
├── content.json    # 画布与节点数据
├── metadata.json   # 创建信息（XMind 必须）
└── manifest.json   # 文件清单
```

---

## 命令行版本

如果需要在脚本或 CI 中批量转换，可使用仓库附带的 Python 脚本（无需第三方依赖）：

```bash
# XMind → Markdown
python3 xmind_to_markdown_converter.py input.xmind
python3 xmind_to_markdown_converter.py input.xmind -o output.md
python3 xmind_to_markdown_converter.py input.xmind --stdout
```

---

## License

[MIT](LICENSE)
