# PUSH TO KINDLE!

![](<https://img.shields.io/badge/author-aneureka-orange.svg>) [![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)

`PUSH TO KINDLE!` 是一个简洁优雅的 Kindle 文档推送工具，快来拯救你的泡面板！



## 开始

访问：https://tokindle.top

现在就推送文档到你心爱的 Kindle 上吧~



## 为什么我需要这个东西

其实通过官方的方法用邮箱发送文档没什么问题，但因为懒，想去掉重复无谓的操作

如果你觉得有哪些需要改进或新增的功能或点子，欢迎联系我哦


## 技术栈

- JQuery（前端就是一把梭）
- Flask
- ~~Redis Queue（用于异步推送，用 Supervisor 管理）~~



## 部署

如果你想学习或重新运行本项目，也可以将 `PUSH TO KINDLE!` 部署到你的服务器上，只需要重新填写配置信息：

- 在项目文件夹创建 virtualenv Python3 环境，命名为 venv
- 安装项目依赖： `pip3 install -r requirements`
- 修改 `config.py` （需要注册并配置 [Mailgun](https://www.mailgun.com/) ）
- 如果运行在本地测试环境，将 `run.sh.example` 重命名为 `run.sh` ，并修改它
- 如果运行在服务器环境，将 `run_server.sh.example` 和 `uwsgi.ini.example` 重命名为 `run_server.sh` 和 `uwsgi.ini`，并进行相应的修改
- ~~配置 supervisor 将 rq 运行起来，可参考 [官方文档](http://python-rq.org/patterns/supervisor/)~~
- 运行 `bash run.sh` 或 `bash run_server.sh`，启动你的项目吧~

## 部署（使用 Docker-compose）

1. 构建 Docker 镜像

    ```bash
    docker-compose build
    ```

2. 创建并调整配置

    复制 `.env.example` 为 `.env` 并按需修改相应内容

    - 必填配置

        | 变量名             | 说明 |
        | ----------------- | --- |
        | `PORT`            | 程序运行的端口，如 `8080` |
        | `PRODUCTION_HOST` | 程序运行的域名（包含端口），如 `http://127.0.0.1:8080` |
        | `MG_API_KEY`      | Mailgun 提供的 API Key |
        | `MG_DOMAIN_NAME`  | Mailgun 中设置的邮箱域名，如 `push.tokindle.top` |
        | `MG_EMAIL_FROM`   | 发送邮件使用的邮箱名，如 `please@push.tokindle.top` |

    - 可选配置（如需使用，先删除相应行首 `#`）

        | 变量名              | 说明 |
        | ------------------ | --- |
        | `APP_NAME`         | 程序名称，如 `PUSH TO KINDLE!` |
        | `MG_EMAIL_SUBJECT` | 发送邮件的主题，如 `convert` |
        | `MG_EMAIL_TEXT`    | 发送邮件的正文内容 |

3. 启动 docker-compose

    ```bash
    docker-compose up -d
    ```

    > 修改 `.env` 文件中的配置后，只需重新执行 `docker-compose up -d` 命令即可更新配置。

## 计划

- 支持中文文档名 ✅
- 文档分享（计划中）



## 特别感谢

- [filepond](https://github.com/pqina/filepond)，一个超好用又好看的 JS 文件上传工具
- [eruda](https://github.com/liriliri/eruda)，一个移动端网页控制台，用它调试解决了关键的问题



## 捐赠

觉得 `PUSH TO KINDLE!` 刚好解决了你的问题，可以考虑 `某宝` 请我喝杯一点点哟~

<img width="200px" src="https://i.loli.net/2019/04/07/5ca9ef413e986.jpg" />



❤️ 感谢以下同学（如果需要匿名请联系我或备注一下哦）

| 昵称  | 金额   | 日期       | 备注                      |
| ----- | ------ | ---------- | ------------------------- |
| *逸涵 | ￥5.00 | 2019-08-13 | 肥肠感谢你的大白兔奶糖www |
