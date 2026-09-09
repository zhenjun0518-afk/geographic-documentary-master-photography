# Geographic Documentary Master Photography

**English** | [简体中文](README.zh-CN.md)

A professional Agent Skill for generating world-class geographic documentary, landscape, wildlife, travel, expedition, human-geography, environmental, and observational photography prompts.

The skill is designed around one core principle:

> Don't merely make a place look beautiful. Make the photograph explain why the place is the way it is.

It combines geographic authenticity, environmental storytelling, decisive moments, natural light, deliberate lens choices, layered composition, field realism, and strong batch diversity. It also includes a carefully bounded staged-candid mode for fictional adult characters in public or semi-public spaces.

> This project is independent and is not affiliated with, endorsed by, or a reproduction of National Geographic or any other real-world publication or brand. “National-Geographic-level” is used only as a shorthand for a high editorial standard of geographic storytelling and field realism.

## What it can do

- Landscape and landform photography
- Wildlife and habitat storytelling
- Human geography and cultural documentary
- Travel documentary
- Expedition and field-research imagery
- Urban geography
- Aerial geographic relationships
- Underwater documentary photography
- Extreme-weather storytelling
- Fictional adult character → believable documentary live-action translation
- Staged candid / observational framing in public or semi-public spaces
- Multi-image editorial sets such as `n=10`

## What makes it different

A typical image prompt often optimizes for “beautiful,” “cinematic,” “epic,” and “golden hour.” This skill first asks:

1. Is the place geographically believable and identifiable?
2. Does the subject genuinely belong in the environment?
3. Is there one clear visual story in the frame?
4. Does the lens and viewpoint serve that story?
5. Is the light/weather plausible for the location?
6. Is there convincing spatial depth?
7. Does the result avoid generic AI-prompt aesthetics?

## Installation

### Codex / Agent Skills

```bash
git clone https://github.com/zhenjun0518-afk/geographic-documentary-master-photography.git ~/.codex/skills/geographic-documentary-master-photography
```

Then start a new Codex conversation and call:

```text
Use $geographic-documentary-master-photography to create a 10-frame documentary photography set about Himalayan yak herders, 3:2.
```

## Quick examples

### Landscape

```text
Use $geographic-documentary-master-photography, Iceland black-sand coast, storm, 16:9, wide environmental framing, n=6.
```

### Wildlife

```text
Use $geographic-documentary-master-photography, Amazon rainforest jaguar, 600mm, after a tropical downpour, low angle, prompts only.
```

### Human geography

```text
Use $geographic-documentary-master-photography, Himalayan yak herders, n=10, 3:2, documentary, no studio look.
```

### Urban documentary

```text
Use $geographic-documentary-master-photography, Tokyo commuters on a rainy night, 35mm documentary photography, n=6.
```

### Fictional adult character

```text
Use $geographic-documentary-master-photography, adult live-action Monkey King, Tibetan plateau, staged candid observation, telephoto, n=10.
```

## `n=10` is a real editorial set

The skill does not create ten near-identical prompts with swapped backgrounds. It actively varies focal length, camera distance, viewpoint, shot scale, foreground, subject action, weather expression, light, spatial scale, and narrative purpose.

A recommended 10-frame arc includes establishing geography, environmental portrait, decisive moment, long-lens compression, weather/atmosphere, observational framing, small-subject/big-world scale, high-view/aerial logic, detail evidence, and an unconventional closing frame.

## User-specified conditions are locked

If you specify:

```text
storm + 35mm + 16:9 + low angle + person small in frame
```

those conditions remain fixed. Only unspecified dimensions are varied.

## Photographic realism

The skill may intentionally use restrained real-world imperfections such as slight motion blur, partial missed focus, natural grain/digital noise, lens flare, rain drops on glass, condensation, atmospheric haze, foreground obstruction, underwater backscatter, imperfect auto exposure, mild wide-angle distortion, and telephoto compression.

These are used to make the image feel captured rather than broken.

## Anti-template rules

The skill avoids by default overprocessed HDR, oversaturation, giant fake moons, unnecessary aurora, automatic golden hour, universal teal-orange color grading, postcard symmetry, studio key lighting, plastic skin, fake spotless expedition clothing, ecologically incorrect species/season combinations, and obvious AI cosplay appearance.

The target feeling is:

> “A photographer was actually there.”

## Staged candid observation: safety boundary

The candid-observation mode is strictly for fictional or staged **adult** photography in public or semi-public environments. It uses hidden-observer visual language such as foreground obstruction, distant telephoto compression, reflections, door frames, street corners, and imperfect framing.

It does **not** support real non-consensual surveillance, minors, bathrooms, changing rooms, showers, bedrooms, or other private-space voyeurism.

## Language support

The canonical `SKILL.md` is English-first and includes both English and Chinese trigger phrases. It should answer in the user's language whenever practical.

- English usage: fully supported
- Simplified Chinese: fully supported
- Other languages: supported through language matching when practical

## Repository files

```text
geographic-documentary-master-photography/
├── SKILL.md
├── README.md
├── README.zh-CN.md
├── UPGRADE.md
├── CHANGELOG.md
├── scripts/
│   ├── update.sh
│   └── update.ps1
└── agents/
    └── openai.yaml
```

## Updating and maintaining the Skill

If you installed this repository with Git, update the installed copy with:

```bash
git -C ~/.codex/skills/geographic-documentary-master-photography pull --ff-only origin main
```

This repository also includes a built-in **Maintainer / Upgrade Protocol**. In an agent environment with GitHub write access, you can ask the Skill to upgrade itself as a repository project, including semantic versioning, bilingual documentation synchronization, changelog updates, validation, commit, and post-commit verification.

Example:

```text
Use $geographic-documentary-master-photography in maintainer mode.
Upgrade this Skill with a polar expedition photography mode.
Preserve backward compatibility, choose the semantic version bump,
synchronize English and Chinese docs, update CHANGELOG, validate,
commit to GitHub, then re-read the committed Skill to verify it.
```

See [UPGRADE.md](UPGRADE.md) for commands and maintainer request templates, and [CHANGELOG.md](CHANGELOG.md) for release history.

## License

Apache-2.0
