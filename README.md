# OpenClaw Claw: 云端零成本 API 转发器

本项目参考了 `hermes-claw` 的设计，旨在通过 GitHub Actions 部署一个临时的、全功能的 **OpenClaw (Zero Token)** 服务。

## 核心功能
1.  **自动部署**：使用 GitHub Actions 免费算力运行 OpenClaw。
2.  **隧道穿透**：集成 Cloudflare Tunnel，自动生成公共 API 地址。
3.  **Codespaces 兼容**：内置 Dev Container，支持在浏览器中调试 OpenClaw 源码。

## 快速开始

### 1. 配置 Secrets
在 GitHub 仓库中设置以下 Secrets：
- `GATEWAY_TOKEN`: (必填) 用于访问 API 的鉴权令牌。
- `CLAUDE_SESSION_KEY`: (选填) 用于自动注入 Claude 会话。

### 2. 启动服务
1.  进入 **Actions** 页面。
2.  选择 **OpenClaw Runner**。
3.  点击 **Run workflow**。
4.  稍等片刻，在日志中查找生成的 `*.trycloudflare.com` 地址。

## 配合 Hermes 使用
将生成的 URL 填入 `hermes-claw` 的 `api_base` 参数中，即可实现全链路云端 AI 工作流。
