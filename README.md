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

The skill does not create ten near-identical prompts with swapped backgrounds. It actively varies:

- focal length
- camera distance
- viewpoint
- shot scale
- foreground
- subject action
- weather expression
- light
- spatial scale
- narrative purpose

A recommended 10-frame arc includes:

1. Establishing geographic frame
2. Environmental portrait
3. Decisive moment
4. Long-lens compression
5. Weather / atmosphere
6. Observational or obstructed frame
7. Small subject / big world
8. High view / aerial logic
9. Detail evidence
10. Unconventional closing frame

## User-specified conditions are locked

If you specify:

```text
storm + 35mm + 16:9 + low angle + person small in frame
```

those conditions remain fixed. Only unspecified dimensions are varied.

## Photographic realism

The skill may intentionally use restrained real-world imperfections such as:

- slight motion blur
- partial missed focus
- natural grain / digital noise
- lens flare or veiling glare
- rain drops on glass
- condensation
- atmospheric haze
- foreground obstruction
- underwater backscatter
- imperfect auto exposure
- mild wide-angle distortion
- telephoto compression

These are used to make the image feel captured rather than broken.

## Anti-template rules

The skill avoids by default:

- overprocessed HDR
- oversaturation
- giant fake moons
- unnecessary aurora
- automatic golden hour
- universal teal-orange color grading
- postcard symmetry
- studio key lighting
- plastic skin
- fake spotless expedition clothing
- ecologically incorrect species/season combinations
- obvious AI cosplay appearance

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
├── SKILL.md              # Canonical English-first executable skill
├── README.md             # English landing page
├── README.zh-CN.md       # Simplified Chinese documentation
└── agents/
    └── openai.yaml
```

## License

Apache-2.0
