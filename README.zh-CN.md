# Geographic Documentary Master Photography

[English](README.md) | **简体中文**

一个面向 Codex / AI 图像提示词工作流的原创“世界级地理纪实摄影”Skill。

它吸收了高水平纪实摄影、地理摄影、自然摄影、野生动物摄影、人文地理与旅行报道的共同方法，同时借鉴了 `vibeshot-candid-photography` 中有效的变量池、锁定条件、批次差异和自然语言 Prompt 生成机制，并融合了成年虚构角色真人化、公开空间观察式抓拍、长焦/手机/反射/遮挡机位与“被发现镜头”等系统。

> 本项目不代表、隶属于或复制 National Geographic。这里的“国家地理级”仅描述专业目标：强烈地方感、现场真实性、叙事性、自然光、地理/生态逻辑与编辑级摄影质量。

## 默认行为

- 不指定数量时默认生成 10 组专题摄影提示词。
- 指定数量时严格按用户数量输出。
- 只输入地点、动物、人物或角色名也可以自动补全。
- 中文输入默认中文输出；英文输入默认英文输出。

## 核心能力

- 风光与地貌
- 野生动物
- 人文地理
- 旅行纪实
- 探险与科考
- 城市地理
- 航拍
- 水下
- 夜间与极端天气
- 成年虚构角色真人纪实转译
- 公开/半公开空间中的安全摆拍观察式抓拍
- `n=10` 专题组照差异控制

## 与普通摄影 Prompt 的区别

普通 Prompt 常常追求：漂亮、壮观、黄金时刻、完美主体。

本 Skill 优先追求：地点是否可信可辨识、主体与环境是否有关系、画面是否有清晰故事、镜头和机位是否服务叙事、光线天气是否真实、空间层次是否成立，以及是否避免 AI 模板感。

## 安装

推荐直接 Git 克隆：

```bash
git clone https://github.com/zhenjun0518-afk/geographic-documentary-master-photography.git ~/.codex/skills/geographic-documentary-master-photography
```

新的 Codex 对话中调用：

```text
使用 $geographic-documentary-master-photography，喜马拉雅牦牛牧民，n=10，3:2，纪实摄影。
```

## 常用输入

```text
使用 $geographic-documentary-master-photography，亚马逊雨林美洲豹，600mm，暴雨后，低机位，只给提示词。
```

```text
使用 $geographic-documentary-master-photography，冰岛黑沙滩，风暴，16:9，人物小比例大环境。
```

```text
使用 $geographic-documentary-master-photography，东京雨夜通勤人群，35mm纪实摄影，n=6。
```

```text
使用 $geographic-documentary-master-photography，成年真人版悟空，西藏高原，摆拍观察式抓拍，长焦，n=10。
```

## n=10

`n=10` 不会只是换背景。Skill 会主动拉开焦段、机位、景别、前景、动作、光线、空间尺度、天气表现和叙事重点，让最终结果更像一个摄影师完成的专题组照，而不是同一模板换场景。

## 用户指定条件锁定

用户明确指定的地点、时间、季节、天气、画幅、人物/动物身份、服装、动作、焦段、机位、景别、光线与色彩方向优先级最高。只有未指定维度才允许继续设计或随机。

## 安全边界

观察式抓拍仅用于虚构或明确摆拍的成年角色，并限定在公开或半公开空间。禁止真实非自愿偷拍、未成年人及厕所、更衣室、浴室、卧室等私密空间偷窥。

## 升级与维护

### 更新已经安装的版本

如果通过 Git 克隆安装，可以直接拉取最新版：

```bash
git -C ~/.codex/skills/geographic-documentary-master-photography pull --ff-only origin main
```

Windows PowerShell：

```powershell
git -C "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography" pull --ff-only origin main
```

也可以运行仓库自带的：

```bash
bash ~/.codex/skills/geographic-documentary-master-photography/scripts/update.sh
```

或 Windows：

```powershell
& "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography/scripts/update.ps1"
```

### 升级 Skill 本身

本 Skill 从 **v1.2.0** 开始内置 **维护者 / 升级协议**。在具备 GitHub 写权限的 Agent/Codex 环境中，以后可以直接这样说：

```text
使用 $geographic-documentary-master-photography 进入维护者模式。
升级这个 Skill，加入“极地科考摄影”模式。
保持向后兼容，自动判断语义化版本号，
同步中英文文档和 CHANGELOG，完成校验后提交到 GitHub，
最后重新读取 GitHub 上的 SKILL.md 验证升级结果。
```

升级协议要求执行：读取 GitHub 当前 `main` → 判断版本号 → 修改能力 → 同步双语文档 → 更新 CHANGELOG → 校验 → 提交 → GitHub 端复核。

如果运行环境没有 GitHub 写权限，Skill **不得声称已经升级**，只能输出建议修改或补丁。

完整说明见 [UPGRADE.md](UPGRADE.md)，版本历史见 [CHANGELOG.md](CHANGELOG.md)。
