# Upgrade Guide

[English](#for-users-update-an-installed-copy) | [简体中文](#中文升级说明)

This repository supports two different kinds of upgrades:

1. **Updating an installed copy** — pull the newest published Skill from GitHub.
2. **Upgrading the Skill itself** — add capabilities, change rules, bump the version, update bilingual docs, and publish a new release commit.

## For users: update an installed copy

### macOS / Linux

If the Skill was installed with `git clone` into the standard Codex directory:

```bash
git -C ~/.codex/skills/geographic-documentary-master-photography pull --ff-only origin main
```

Or run:

```bash
bash ~/.codex/skills/geographic-documentary-master-photography/scripts/update.sh
```

### Windows PowerShell

```powershell
git -C "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography" pull --ff-only origin main
```

Or run:

```powershell
& "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography/scripts/update.ps1"
```

If the Skill was downloaded as a ZIP or manually copied, it has no Git history. Download the latest repository version and replace the local Skill directory, while backing up any local custom edits first.

## For maintainers: upgrade the Skill itself

You can instruct an AI coding/agent environment with GitHub write access using a request like:

```text
Use $geographic-documentary-master-photography in maintainer mode.
Upgrade the Skill with a new polar expedition photography mode.
Preserve backward compatibility, choose the correct semantic version bump,
update English and Chinese documentation, update CHANGELOG.md, validate the Skill,
and commit the changes to the repository.
```

Chinese example:

```text
使用 $geographic-documentary-master-photography 进入维护者模式。
升级这个 Skill，加入“极地科考摄影”模式。
保持向后兼容，自动判断语义化版本号，同步中英文文档和 CHANGELOG，
完成校验后提交到 GitHub。
```

### Semantic version rules

- **PATCH**: fixes, wording improvements, prompt-quality corrections, no new public capability.
- **MINOR**: backward-compatible capabilities, photography modes, variable pools, language support, examples, maintenance features.
- **MAJOR**: breaking changes to skill ID, invocation, required input, output contract, compatibility, or repository structure.

### Required release checks

The maintainer protocol inside `SKILL.md` requires repository re-read, bilingual behavior parity, DZS-SDF identity consistency, trigger checks, locked-condition priority, batch-diversity preservation, realism/safety checks, changelog update, and post-commit verification.

## Recommended maintainer request template

```text
Upgrade $geographic-documentary-master-photography.
Goal: {new capability or correction}
Target version: {optional; otherwise choose with SemVer}
Compatibility: preserve current invocation and existing behavior unless explicitly noted
Docs: synchronize English and Simplified Chinese
Validation: verify Frontmatter, DZS-SDF identity, triggers, examples, n=10 diversity, locked conditions, realism/safety rules
Publish: update CHANGELOG and commit to main after validation
```

---

## 中文升级说明

这个项目把“升级”分成两种：

**本地用户更新已安装版本：** 如果是通过 Git 克隆安装，执行：

```bash
git -C ~/.codex/skills/geographic-documentary-master-photography pull --ff-only origin main
```

Windows PowerShell：

```powershell
git -C "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography" pull --ff-only origin main
```

**升级 Skill 本身：** 以后可以直接对有 GitHub 写权限的 AI/Codex 说：

```text
使用 $geographic-documentary-master-photography 进入维护者模式。
升级这个 Skill，加入 {新能力}。
保持向后兼容，自动判断版本号，同步中英文文档和 CHANGELOG，
完成校验后提交到 GitHub。
```

Skill 内置维护协议会要求：先读 GitHub 最新版本 → 判断 SemVer → 修改能力 → 同步双语文档 → 更新 CHANGELOG → 校验 → 提交 → 再读取 GitHub 验证。
