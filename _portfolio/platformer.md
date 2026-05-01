---
title: "Game Level Blending with User Input"
excerpt: "Text-Prompted Game Level Generation & Blending <br/><img src='/images/level_generation_highres.png'>"
collection: portfolio
---

[**Generation Code**](https://github.com/hyc481/PCG_MoE) · [**Evaluations**](https://github.com/Igauk/MoEMario)

An AI that generates **blended platformer levels** from text prompts, mixing the styles of Super Mario Bros., Kid Icarus, and Mega Man into novel, playable levels.

We fine-tuned **distilGPT-2** with a **Mixture of Experts (MoE)** architecture — one expert per game — so each expert learns that game's level structure and style. During generation, activating multiple experts blends their knowledge, producing levels that inherit characteristics from each source game. Text prompts like *"many solids, few hazards"* are encoded via BART and injected through cross-attention, giving users direct control over what gets generated.

![level_generation_highres](/images/level_generation_highres.png)

## Level Blending

- 4 experts trained independently on Super Mario Bros., Super Mario Bros. 2, Kid Icarus, and Mega Man
- Each game contains levels of **varying orientations and landscapes**
- Activating multiple experts measurably shifts the expressive range of outputs toward a blend of the source games
![Blending](/images/Screenshot 2026-05-01 at 12.09.47 AM.png)
- **98.6%** of generated SMB segments were playable; **90%** of full levels completed end-to-end
- Blended SMB + KI levels produced segments playable under both games' movement rules (30.5%)

## User Input & Control

- Type a prompt describing the level feel — obstacle density, openness, difficulty — and the model steers generation accordingly
- Prompt following improved **+11% over random** on hazard and moving platform tiles
- Adjust expert weights at inference time to prioritize one game's style over another

![Blending](/images/Screenshot 2026-05-01 at 12.19.46 AM.png)

---
*Collaboration: Haoyu Chen, Ian Gauk & Zhikai Chen.*