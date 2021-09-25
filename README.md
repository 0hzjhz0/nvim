# 配置你的NVIM

# 依赖
- [ ] ccls
- [ ]

# 基本配置篇
## 1 基础编辑器特性
### 1.0 最基本的键位
`SPACE` ：`<LEADER>`
`SPACE` `r` `c` ：打开init.vim(插入模式下)

### 1.1 普通模式的键位
| 快捷键          | 行为                 |
|-----------------|----------------------|
| `; `            | `: `                 |
| `Q`             | `:q`                 |
| `S`             | `:w`                 |
| `s`             | `<nop>` 屏蔽`s`      |
| `<`             | 反向缩进             |
| `>`             | 缩进                 |
| `Y`             | 从光标处复制到行尾   |
| `=`             | 跳到下一个搜索匹配项 |
| `-`             | 跳到上一个搜索匹配项 |
| `SPACE` `Enter` | 取消搜索匹配项高亮   |
| `SPACE` `d` `w` | 寻找近处重复的单词   |
| `SPACE ` `o`    | 折叠代码             |

### 1.2 插入模式的健位
| 快捷键     | 行为                   |
|------------|------------------------|
| `Ctrl - a` | 将光标移动至行的末尾   |
| `Ctrl - i` | 将光标移动至行的头部   |
| `j` `j`    | 退出插入模式至普通模式 |

### 1.3 可视模式的键位
| 快捷键 | 行为                         |
|--------|------------------------------|
| `Y`    | 复制选中文本到**系统剪切板** |


## 2 窗口管理
### 2.1 通过分裂屏幕创造窗口
| 快捷键      | 行为                                   |
|-------------|----------------------------------------|
| `s` `k`     | 新建一个分屏并把它放置在当前窗口的上面 |
| `s` `j`     | 新建一个分屏并把它放置在当前窗口的下面 |
| `s` `h`     | 新建一个分屏并把它放置在当前窗口的右边 |
| `s` `l`     | 新建一个分屏并把它放置在当前窗口的左边 |
| `s` `h`     | 将两个分屏水平放置                     |
| `s` `v`     | 将两个分屏垂直放置                     |
| `s` `r` `h` | 将所有分屏水平放置                     |
| `s` `r` `v` | 将所有分屏垂直放置                     |

### 2.2 切换不同的窗口
| 快捷键      | 行为             |
|-------------|------------------|
| `SPACE` `w` | 切换到下一个窗口 |
| `SPACE` `h` | 切换到左边窗口   |
| `SPACE` `l` | 切换到右边窗口   |
| `SPACE` `k` | 切换到上方窗口   |
| `SPACE` `j` | 切换到下方窗口   |

### 2.3 为不同窗口调整大小
用方向键改变当前窗口的大小

### 2.4 关闭窗口
| 快捷键      | 行为                                                     |
|-------------|----------------------------------------------------------|
| `Q`         | 关闭当前窗口                                             |
| `SPACE` `q` | 关闭当前窗口下方的窗口(如果下面没有窗口，则关闭当前窗口) |


## 3 标签页管理
| 快捷键      | 行为                       |
|-------------|----------------------------|
| `t` `k`     | 新建一个标签页             |
| `t` `h`     | 移至左侧标签页             |
| `t` `l`     | 移至右侧标签页             |
| `t` `m` `h` | 将当前标签页向左移动一格   |
| `t` `m` `l` | 将当前标签页向右侧移动一格 |


# 插件篇



## COC 自动补全
| 快捷键 | 行为 |
|--------|------|

## [Ultisnips](<++>) <++>
<++>
| 快捷键 | 行为 |
|--------|------|


## 文件浏览
### [coc-explorer - 文件浏览器](<++>) <++>
<++>
| 快捷键  | 行为                   |
|---------|------------------------|
| `t` `t` | 打开文件浏览器         |
| `? `    | 查看帮助（在浏览器中） |

## FZF - 模糊文件查找器
| 快捷键 | 行为 |
|--------|------|

## 文字编辑
### [vim-table-mode](<++>) <++>
| 快捷键 | 行为 |
|--------|------|

### [Undotree](<++>) <++>
<++>
| 快捷键 | 行为 |
|--------|------|

### [vim-surround](<++>) <++>
<++>
想要添加包裹符号（`string` ->`"string"` ）
```text
string
```

按下`yskw` 
```text
'string'
```

想要修改包裹符号
```text
'string'
```

按下`cs'"` ：
```text
"string"
```

### [vim-easy-align](<++>) <++>
<++>
在普通或可视模式下按`ga` +*****符号** 可以根据**符号** 对齐文本

### [AutoFormat](<++>) <++>
<++>
按`\` `f` 开启格式化模式

### 
<++>
# 自定义Snippets
## Markdown
| 快捷键 | 创建的文字                                                |
|--------|-----------------------------------------------------------|
| `,d`   | 行内代码块                                                |
| `,c`   | 行间代码快                                                |
| `,n`   | ---                                                       |
| `,b`   | **粗体**                                                  |
| `,s`   | ~~被划去~~ 的文字                                         |
| `,m`   | -[] 清单                                                  |
| `,p`   | 图片                                                      |
| `,a`   | [链接]()                                                  |
| `,1`   | # H1                                                      |
| `,2`   | ## H2                                                     |
| `,3`   | ### H3                                                    |
| `,4`   | #### H4                                                   |
| `,f`   | 去往下一下`     " 插入空白行` （占位符）                  |
| `,w`   | 去往下一个`     " 插入空白行` （占位符）并帮你按下`Enter` |



