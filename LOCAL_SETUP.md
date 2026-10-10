# 个人主页：原源码占位版

直接基于 [EmpathYang/empathyang.github.io](https://github.com/EmpathYang/empathyang.github.io) 的源码修改，使用原站 Jekyll / al-folio 项目，保留其布局、配色、字体、背景动效、主题切换、搜索和论文模板。

## 打开网页

双击本目录的 **启动预览.command**，再打开 **http://127.0.0.1:4000/**。

终端窗口保持打开即可预览，按 Control+C 停止。不要同时启动多个预览窗口。若端口已占用，可先打开网址查看是否已有本项目的预览。

已在这个工作区的 `work/runtime/` 中安装 Ruby 3.4.4 和 Bundler 4.0.6，项目依赖安装在 `vendor/bundle/`，不使用或修改 macOS 自带 Ruby。启动文件会自动选择这套运行环境。请保留当前文件夹结构；如将源码迁移到另一台机器，需重新安装 Ruby 及运行 `bundle install`。

## 预留位置

- 英文名、中文名、姓名读音、学校 / 机构、职位、研究理念。
- 个人照片、个人简介、教育背景、研究方向。
- Email、Google Scholar、GitHub、LinkedIn、X、小红书六个图标。
- 五条动态及其日期。
- 九篇论文的配图、标题、作者、发表会议 / 期刊、年份、摘要、PDF / Code / Website 链接。

这些都是待填写的位置，没有虚构你的个人经历。未填写的图标和链接没有跳转地址。照片和论文图使用灰蓝色占位图。

## 在哪里填内容

| 内容                                       | 修改位置                          |
| ------------------------------------------ | --------------------------------- |
| 姓名、中文名、读音、站点介绍、未来域名     | `_config.yml`                     |
| 职位、学校、研究理念、个人简介和头像文件名 | `_pages/about.md`                 |
| 邮箱和社交账号                             | `_data/socials.yml`               |
| 动态                                       | `_news/`，每条一个 Markdown 文件  |
| 论文                                       | `_bibliography/papers.bib`        |
| 个人照片                                   | `assets/img/`                     |
| 论文配图                                   | `assets/img/publication_preview/` |
| PDF 和简历文件                             | `assets/pdf/`                     |

### 社交账号

`_data/socials.yml` 默认是空字典 `{}`。填写时删除最后的 `{}`，取消所需行的注释，替换为真实邮箱或账号。填好后对应的占位图标自动消失，显示原站生成的真实链接。

小红书可以按下面的形式填写：

```yaml
xiaohongshu:
  logo: xhs-icon
  title: 小红书
  url: https://www.xiaohongshu.com/user/profile/你的ID
```

### 动态

修改每个动态文件的正文和 `date`，删除 `placeholder_date` 这一行，即会按原站格式显示真实日期。可按需要增删文件。

### 论文

保留 BibTeX 格式，替换标题、作者、年份、会议和摘要。每个条目的 `placeholder = {true}` 是占位标记；填入真实论文后删除这一行，再添加例如：

```bibtex
pdf = {your-paper.pdf},
code = {https://github.com/你的账号/项目},
website = {https://你的项目网址},
```

`preview` 填论文配图的文件名，`selected = {true}` 控制是否显示在首页。增删条目即可调整论文数量。当前 `year = {2026}` 仅供模板排序，并非发表信息，需要替换。

编辑内容后刷新浏览器；修改 `_config.yml` 后需重启预览。准备发布时，再更换域名和 Git 远程仓库。

## 验证和来源

已成功构建并运行原项目，检查了主页占位数量、图片加载、深浅主题切换和手机导航。保留原作者的定制模板，并用 `.al-folio-overrides.yml` 记录了五处原站模板 / 样式覆盖。

当前只用 SVG 占位图，因此默认关闭 ImageMagick 衍生图生成。以后若需要自动生成多种图片尺寸，可安装 ImageMagick 后再开启。原仓库的无关示例素材和个人照片、PDF 已从发布源码中移出，工作区备份仍保留。

GitHub Actions 使用 Ruby 3.4.4 构建，main 分支每次更新都会触发自动部署。网站地址配置为 https://arioyu-0001.github.io/ 。仓库来源与许可证保留，见 SOURCE_PROVENANCE.md 和 LICENSE。
