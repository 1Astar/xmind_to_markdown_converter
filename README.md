https://1Astar.github.io/xmind_to_markdown_converter/
# xmind_to_markdown_converter#xmind到markdown转换器https://1Astar.github.io/xmind_to_markdown_converter/# xmind_to_markdown_converter#xmind转markdown转换器

> 在浏览器里双向转换 XMind 与 Markdown，无需安装任何依赖。

![License](https://img.shields.io/badge/license-MIT-green)![许可证](https://img.shields.io/badge/license-MIT-green)
![No dependencies](https://img.shields.io/badge/dependencies-none-brightgreen)![无依赖](https://img.shields.io/badge/dependencies-none-brightgreen)
![Pure HTML](https://img.shields.io/badge/built%20with-HTML%20%2F%20CSS%20%2F%20JS-orange)![纯 HTML](https://img.shields.io/badge/built%20with-HTML%20%2F%20CSS%20%2F%20JS-orange)

🔗 **在线使用：[https://1Astar.github.io/xmind_to_markdown_converter/](https://1Astar.github.io/xmind_to_markdown_converter/)**

---

## 功能

| 方向 | 说明 |
|------|------|
| **XMind → Markdown** | 上传 `.xmind` 文件，解析所有画布导出 `.md`，支持预览与复制 |
| **Markdown → XMind** | 上传 `.md` 文件，自动按一级标题拆分为多张画布，生成 `.xmind` |

- 🔒 完全本地运行，文件不上传任何服务器
- 📦 零依赖，单个 HTML 文件
- 🗂 多画布支持，自动或手动拆分
- 🖨 Markdown 结果支持一键复制

---

## 画布拆分规则

自动按 `#` 一级标题拆分。也可手动用注释标记命名：

```markdown
<!-- sheet: 画布名称 -->
# 根节点
## 子节点
```

---

## 层级对应关系

| Markdown | XMind 节点 |
|----------|-----------|
| `#` 一级标题 | 根节点 |
| `##` 二级标题 | 一级子节点 |
| `###` 三级标题 | 二级子节点 |
| `- ` 列表项 | 三级及以下子节点 |
| `> ` 引用 | 节点备注 |

---

## 兼容性

| XMind 版本 | 支持 |
|-----------|------|
| XMind 2020+ | ✅ |
| XMind 8 / ZEN | ✅ |

浏览器要求：Chrome 80+ / Edge 80+ / Firefox 113+ / Safari 16.4+

---

## License

[MIT](LICENSE)