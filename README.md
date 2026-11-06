# xmind_to_markdown_converter

> 在浏览器里双向转换 XMind 与 Markdown，并支持粘贴文本、AI 整理成脑图。无需安装依赖。

![License](https://img.shields.io/badge/license-MIT-green)
![No dependencies](https://img.shields.io/badge/dependencies-none-brightgreen)
![Pure HTML](https://img.shields.io/badge/built%20with-HTML%20%2F%20CSS%20%2F%20JS-orange)

🔗 **在线使用：[https://1Astar.github.io/xmind_to_markdown_converter/](https://1Astar.github.io/xmind_to_markdown_converter/)**

---

## 功能

| 方向 | 说明 |
|------|------|
| **XMind → Markdown** | 上传 `.xmind` 文件，解析所有画布导出 `.md`，支持预览与复制 |
| **Markdown → XMind** | 上传 `.md` **或粘贴 Markdown 文本**，自动拆分画布，生成 `.xmind` |
| **AI 整理 → XMind** | 弹窗配置 OpenAI 兼容 API（预设选择、自动匹配地址、可从竞品分析同步；仅存本机），两种模式整理后生成脑图 |

### AI 两种模式

1. **杂乱文本 → 脑图**：会议纪要、灵感草稿、聊天摘录等整理成层级 Markdown，再生成 XMind  
2. **Markdown 归纳梳理**：对已有 Markdown 总结归纳、理顺层级后再生成 XMind  

### AI 配置（对齐竞品分析工作台交互）

- 弹窗配置：预设一键选择（DeepSeek / 千问 / OpenAI / Kimi / 硅基流动等）
- 自动匹配：改模型名或 Base URL 时，尝试自动补全对方字段
- 可「存为预设」「测试连通」，也可「从竞品分析同步」读取 `ai_provider_cfg`

### 隐私与本地存储

- 🔒 转换文件始终在浏览器本地处理，不经过本工具服务器  
- 🔑 AI 的 Base URL / API Key / Model **只写入本机 `localStorage`**  
- 🌐 AI 请求由浏览器**直连**你配置的 OpenAI 兼容接口；若接口禁止浏览器 CORS，需换支持跨域的网关或本地代理  

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
