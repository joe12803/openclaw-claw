# OpenClaw-Claw: 跨平台 API 桥接 + 长期记忆同步

本项目是一个高度自动化的 API 代理与智能体管理中心。它利用 GitHub Actions 部署 **OpenClaw**，将各类非标准模型（如 Gemini Web、Claude Web）转换为标准 OpenAI 接口，并支持跨 Agent 的长期记忆共享。

## 核心功能

1.  **OpenClaw 部署**: 自动在 GitHub Actions 云端运行 OpenClaw，提供稳定的 OpenAI 兼容接口。
2.  **长期记忆共享**: 与 `hermes-claw` 结构对齐，所有配置和会话自动备份至 `.openclaw-data/`。
3.  **Copilot 协同**: 内置 `AGENTS.md` 和 `.cursorrules`，让 Copilot 能够理解 OpenClaw 的路由逻辑。
4.  **云端工作站**: 支持一键启动 Codespaces 进行 API 测试和功能开发。

## 配置要求 (Secrets)

请在 GitHub 仓库设置以下密钥：
- `GEMINI_COOKIE`: Gemini Web 版 Cookie。
- `CLAUDE_COOKIE`: Claude Web 版 Cookie。
- `OPENCLAW_AUTH_TOKEN`: 你自定义的 API 访问令牌（默认建议设为 `sk-123456`）。

## 自动同步

系统每 10 分钟自动将配置变更和日志推送到本仓库。
