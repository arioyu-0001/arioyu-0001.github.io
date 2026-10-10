# Personal homepage

个人学术主页框架，基于 [EmpathYang/empathyang.github.io](https://github.com/EmpathYang/empathyang.github.io) 原源码及 al-folio。保留原布局与样式，个人资料使用待填写占位内容。

## 编辑内容

- `_config.yml`：姓名、读音、网站信息。
- `_pages/about.md`：个人简介、机构、研究方向和头像。
- `_data/socials.yml`：邮箱与社交账号。
- `_news/`：最新动态。
- `_bibliography/papers.bib`：论文及链接。
- `assets/img/`：头像和论文配图。

详细说明见 [LOCAL_SETUP.md](LOCAL_SETUP.md)。

## 自动部署

`main` 分支更新后，GitHub Actions 使用 Ruby 3.4.4 构建 Jekyll，并发布到 GitHub Pages。
仓库 Settings → Pages → Source 应选择 **GitHub Actions**。

## 本地预览

在 Ruby 3.4 环境中：

```sh
gem install bundler -v 4.0.6
bundle install
bundle exec jekyll serve --config _config.yml,_config.local.yml
```

本地工作区也可使用 `启动预览.command`。

保留原始 MIT 许可证。来源版本详见 [SOURCE_PROVENANCE.md](SOURCE_PROVENANCE.md)。
