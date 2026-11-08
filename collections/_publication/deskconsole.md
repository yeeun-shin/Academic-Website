---
layout: publication
title: "Desk Console: Augmenting 3D Virtual Controls on Physical Desks for Immersive Authoring"
# subtitle: "Augmenting 3D Virtual Controls on Physical Desks for Immersive Authoring"
description: "A novel authoring interface that transforms 2D control panels into virtual 3D controls on a physical desk, enabling tangible spatial interaction."
# banner_image: "assets/images/desk-console-banner.png" # 1200x630 배너 이미지
keywords:
  - Virtual Reality
  - Mixed Reality
  - Immersive Authoring

authors:
  - name: Yeeun Shin
    link: "https://yeeunshin.com/"
    equal_contrib: false
  - name: Seung Hyeon Han
  - name: Woohun Lee

conference: "CHI 2025 Interactivity - M.S. Thesis"
equal_contrib_notice: false 

paper_url: "https://doi.org/10.1145/3706599.3721165" 
# code_url: "https://github.com/Yes-Yeeun-Shin/DeskConsole"
slides_url: "/assets/pdf/Defense_Master_Thesis_ppt.pdf"
video_url: "https://youtu.be/5QcrwW9Kr3g?si=KabvKkiTJLaT3AIl"

teaser_video: "assets/video/deskconsole_walkthru.mp4"


# teaser_youtube_id: "5QcrwW9Kr3g"


# youtube_id: "5QcrwW9Kr3g" # Youtube 비디오 ID (https://www.youtube.com/watch?v= 다음 부분)

# --- 이미지 캐러셀 데이터 ---
carousel_title: "Demo @CHI '25"
image_carousel:
  - image: "assets/img/deskconsole/chi1.gif"
  - image: "assets/img/deskconsole/chi2.jpg"
  - image: "assets/img/deskconsole/chi3.gif"
  - image: "assets/img/deskconsole/chi5.JPG"
  - image: "assets/img/deskconsole/chi6.jpg"
  - image: "assets/img/deskconsole/chi7.png"
  - image: "assets/img/deskconsole/chi4.jpg"

# --- 비디오 캐러셀 데이터 ---
# video_carousel:
#   - video: "assets/videos/desk-console/interaction1.mp4"
#   - video: "assets/videos/desk-console/interaction2.mp4"
#   - video: "assets/videos/desk-console/interaction3.mp4"


bibtex: |
  @inproceedings{shin2025desk,
  author    = {Yeeun Shin and Seung Hyeon Han and Woohun Lee},
  title     = {Desk Console: Augmenting 3D Virtual Controls on Physical Desks for Immersive Authoring},
  booktitle = {Extended Abstracts of the CHI Conference on Human Factors in Computing Systems (CHI EA '25)},
  year      = {2025},
  doi       = {10.1145/3706599.3721165},
  url       = {https://doi.org/10.1145/3706599.3721165}
  }


additional_content:
############# INTERFACE
  - type: main-heading 
    text: "Desk Console Interface"
  
  - type: paragraph
    text: "<em>Desk Console</em> is an immersive authoring interface that transforms 2D control panels into 3D virtual controls on a physical desk, enabling spatial interaction like a mixing console or cockpit. It integrates the desk as an interaction surface to merge physical and virtual elements, turning complex GUI operations into tangible manipulation. Passive haptic feedback provides stability, while intuitive 3D interactions foster creativity through exploratory and embodied workflows."


  - type: columns-50-50
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/Fig2_control_design.jpg"
          alt: "3D Represented Controls Mapped from Categorized UI Input Types Image"
        - type: text 
          content: "Virtual 3D Control Design Mapped from 2D Panels"
    right:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/perspective.gif"
          alt: "3D Represented Controls Mapped from Categorized UI Input Types Image"
        - type: text 
          content: "Interactive Application Implementation"

############# EVALUATION
  - type: main-heading 
    text: "Evaluation"
  - type: image
    path: "/assets/img/deskconsole/userstudy.png"
    alt: "Desk Console User Study"
  - type: columns-66-33
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/5_procedure.png"
          alt: "Desk Console User Study Procedure Image"
        - type: text 
          content: |
            We used raycasting, a widely adopted method for interacting with virtual screens, as the baseline. The study employed a within-subjects design to account for order effects.
    right:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/baseline.png"
          alt: "Desk Console User Study Interfaces Image"

############# RESULT
  - type: main-heading 
    text: "Results"

  - type: image
    path: "/assets/img/deskconsole/result.png"
    alt: "Desk Console results"

  - type: paragraph 
    text: "<br>"  

  - type: columns-66-33
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/Performance Indicators.png"
          alt: "Performance Indicators Image"
    right:
      elements: 
        - type: heading 
          content: "Broader Control Exploration"
        - type: text 
          content: |
            Users explored more controls within the same time, and adjusted the vertical slider and color picker significantly faster with Desk Console. They shifted from focusing on a single task to experimenting with multiple options, showing broader exploratory behavior.
            > "I felt more comfortable with this(Desk Console), so I tried different controls earlier and experimented with more various options. "(P9)


  - type: columns-50-50
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/tlx.png"
          alt: "NASA Task Load Index" 
        - type: heading
          content: "Motor-Cognitive Offloading"
        - type: text
          content: "<em>Desk Console</em> significantly reduced mental and physical demand, effort, and frustration compared to raycasting. Familiar desk-based actions and immediate tactile feedback helped offload cognitive load into embodied routines, shortening decisions and enabling smoother engagement."
    right:
      elements: 
        - type: image
          path: "/assets/img/deskconsole/csi.png"
          alt: "Creative Support Index"
        - type: heading
          content: "Embodied Interaction Supporting Creative Flow"
        - type: text
          content: "<em>Desk Console</em> significantly enhanced exploration, expressiveness, and immersion compared to raycasting. Tangible manipulation with passive haptic feedback enabled users to maintain spatial awareness, supporting motor-cognitive strategies for more engaged creative exploration."
 


  - type: heading
    text: "<br><br> Qualitative Observations"
  - type: columns-66-33
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/observation_bimanual.gif"
          alt: "Bimanual Manipulation Image"
    right:
      elements: 
        - type: heading 
          content: "Bimanual Manipulation"
        - type: text 
          content: |
            Tactile feedback reinforces bimanual coordination, sustaining engagement.
            > "Buttons or something similar in a cognitive sense make it much easier... I feel like I could use both hands next time. Using both hands really lightens the load. "(P11)
  - type: columns-66-33
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/gaze.gif"
          alt: "Gaze Dispersion Extent Image"
    right:
      elements: 
        - type: heading 
          content: "Focused Visual Engagement"
        - type: text 
          content: |
            Users’ eye shifts were reduced between the control panel and the creation, resulting in shorter and more stable gaze patterns.
            > "I get the sense that moving up and down is way less distracting for the eyes. With Desk Console, it feels secure in my hand, so I approached it with a similar mindset, much like how I'd work in Photoshop with a mouse, where I don't really look at the controls and just focus on the task at hand." (P6)
  - type: columns-66-33
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/trace.png"
          alt: "Color Exploration Patterns in the Color Picker Image"
    right:
      elements: 
        - type: heading 
          content: "Color Exploration Patterns"
        - type: text 
          content: |
            Interviews revealed distinct experiences with the color picker across the two interfaces. To examine this further, log data that captured traces on the color picker was visualized. The results show more frequent adjustments in raycasting, while Desk Console supported finer, adjacent color exploration.
            > "I could easily find other shades of red and make decisions like, 'I should use this red color.'" (P11) 


---

Immersive authoring provides a powerful 3D content creation experience in virtual reality (VR) by freeing users from the tedious loop of desktop editing and VR validation. However, complex control panels required for creative tasks often disrupt immersion with awkward or unstable spatial interactions. To address this, we present Desk Console, an authoring interface that transforms 2D control panels into virtual 3D controls on a physical desk, enabling tangible spatial interaction similar to real-world interactions. Desk Console transforms traditional control panels into 3D representations based on input types and provides passive haptic feedback through the desk’s physical surface. We demonstrate Desk Console’s capabilities through an interactive 3D scene design application.
