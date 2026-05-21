---
title: "DuckieBot: Autonomous Robot Navigation"
excerpt: "ROS Development, Computer Vision, PID Controls <br/><img src='/images/e4.png'>"
collection: portfolio
---

[**Kinematics Code**](https://github.com/phamcnm/ros-phamm/tree/main/exercise-2) · [**Vision Code**](https://github.com/phamcnm/ros-phamm/tree/main/exercise-3)

Duckiebots are **small, affordable differential-drive robots built on a Raspberry Pi**, designed for autonomous driving research and education. I worked on this as part of CMPUT 503 — a hands-on robotics course covering perception, control, and systems integration.

I built and deployed **ROS nodes** on real hardware: starting with low-level wheel encoder odometry to drive precise distances and rotations, then layering in computer vision for colour-based line detection and HSV-tuned lane boundary tracking. I implemented and compared P, PD, and PID controllers for lane following, ultimately achieving **stable full-circle autonomous navigation** using a P controller with real-time camera feedback.

![Lane following](/images/e3lf.png)

## Kinematics

- Traced a **"D"-shaped path** with LED state signalling across three motion phases [[video]](https://youtube.com/shorts/bexmIOBJRnc)
- Recorded and plotted odometry from ROS bags to analyze real vs. intended trajectory

![D-shape graph](/images/drive_d_graph.png)

**Demos:** [Reverse parking](https://youtube.com/shorts/2WlWNV9-NcE) · [Drive square](https://youtu.be/RDrlkbg8hO0)

## Computer Vision & Lane Following

- Corrected lens distortion using intrinsic camera calibration parameters with OpenCV
- Detected red, blue, and green lines in real-time using HSV masking and contour extraction, triggering distinct robot behaviours per colour [[red]](https://youtube.com/shorts/CKeRNwYd0QA) · [[green]](https://youtube.com/shorts/NfySnTKrO98) · [[blue]](https://youtube.com/shorts/gDtSBA5Nm4s)
- Implemented **P, PD, and PID controllers** for lane following; P alone proved most effective given rapid camera feedback [[P]](https://youtube.com/shorts/Skd2RuMp61I) · [[PD]](https://youtube.com/shorts/tc10usIPpHQ) · [[PID]](https://youtube.com/shorts/pTgdBer345M)
- Achieved **full-circle autonomous lane following** with throttle clipping and fallback reference handling for lost lane markers [[video]](https://youtu.be/VzAoj8ikDDc)

![Red line detection](/images/e3redline.png)

---
*Collaboration: Alex Liu & Minh Pham.*