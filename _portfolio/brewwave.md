---
title: "BrewWave: Brain-Controlled Radio App"
excerpt: "Brain-Computer Interface, EEG Classification & Full-Stack Development <br/><img src='/images/gallery.jpg'>"
collection: portfolio
---

[**GitHub**](https://github.com/acl-24/BrewWave) · [**Devpost**](https://devpost.com/software/brewwave) · [**Demo**](https://www.youtube.com/watch?v=-c3rfvrhF9E&t=1s) · *NatHACKS 2023 — NeurAlbertaTech*

A hands-free radio web app controlled entirely by **brain signals**, built and tested with real BCI devices at NeurAlbertaTech's 48-hour hackathon where I served as **team lead**. Designed to integrate with existing clinical software at **Glenrose Rehabilitation Hospital**, giving individuals with severe motor disabilities independent control over their radio experience.

Users make selections through a **motor imagery EEG paradigm** — imagining a physical movement produces a distinct brain signal, which gets mapped to a keyboard action and triggers the corresponding radio control. No physical input required.

![gallery](/images/gallery.jpg)

## How it works

1. User runs the app alongside existing clinical BCI software (i.e. Emotiv)
2. User imagines a movement — the EEG headset captures the signal
3. Clinical software classifies the motor imagery and maps it to a **keyboard keystroke**
4. BrewWave intercepts the keystroke to navigate categories, select a station, and control playback

## What I built

As lead, I scoped the project around real clinical constraints and drove full-stack development across the team:

- Designed the **UI flow** around the motor imagery paradigm — minimal selections, large targets, unambiguous feedback
- Built front-end (HTML, CSS, JavaScript) and back-end (Express.js, Node.js) for radio streaming and keyboard-event-driven control
- Ensured compatibility with clinical software by relying on **standard keyboard mappings** rather than custom drivers
- Provided our own implementation of real-time classification of EEG with LDA

---
*Team: Ayan Abbas, Elena Arnold, Ian Gauk & Kaitlyn Stark.*