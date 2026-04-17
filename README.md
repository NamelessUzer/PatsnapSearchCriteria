## 说明

这是智慧芽(Patsnap)专利数据库用的检索式文档的Vim语法文件，用于识别检索式文件(.sc)，并高亮检索式中出现的关键词、字段名、IPC/CPC分类号等。

## 功能特性

- 语法高亮：支持 Patsnap 搜索字段（如 `TTL:`、`ABST:`、`PN:` 等完整字段列表）
- 布尔运算符高亮：`AND`、`OR`、`NOT`、`GAND`
- 邻近运算符高亮：`$Wn`、`$PREn`、`$WS`、`$SEN`、`$PARA`
- 频率运算符高亮：`$FREQn`
- IPC/CPC/UPC 分类号高亮
- 注释支持（`#` 行注释）
- 字符串引号高亮
- `TREE@` 公司树运算符高亮
- 检索式美化和格式化命令

## 安装

将 `PatsnapSearchCriteria` 目录复制到 Vim 的运行时路径下（如 `~/.vim/` 或 `~/.config/nvim/`），使其目录结构为：

```
~/.vim/
  ftdetect/patsnapSearchCriteria.vim
  ftplugin/patsnapSearchCriteria.vim
  syntax/patsnapSearchCriteria.vim
```

## 命令

| 命令 | 说明 |
|------|------|
| `:BeautifySC` | 美化整个检索式文件 |
| `:CopyOneLine` | 将选中的检索式合并为一行并复制到剪贴板 |
| `:JoinLinesWithOR` | 将多行用 OR 连接为一行 |
| `:SplitLinesWithOR` | 将一行按 OR 拆分为多行 |
| `:GetElements` | 提取检索要素并复制到剪贴板 |
| `:PasteListInClipboard` | 美化剪贴板中的列表并粘贴 |
| `:FixSCinBracket` | 整理括号内的检索式 |
| `:FixSCinBracket!` | 整理并排序括号内的检索式 |

## 语法说明

Patsnap 使用 `:` 分隔字段名和关键词（如 `TTL:汽车`），支持的运算符包括：

- 逻辑运算符：`AND`、`OR`、`NOT`、`GAND`
- 邻近运算符：`$Wn`、`$PREn`、`$WS`、`$SEN`、`$PARA`
- 频率运算符：`$FREQn`
- 通配符：`*`（0或多个字符）、`?`（1个字符）、`#`（0或1个字符）
- 范围查询：`[20200101 TO 20231231]`
- 公司树：`TREE@"公司名"`
- 短语查询：`"electric vehicle"`
