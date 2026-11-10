---
layout: research-publication
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
pdf_url: "/assets/pdf/DeskConsole.pdf"
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
  - type: columns-33-33-33
    class: overview-summary
    left:
      elements:
        - type: heading
          content: "Motivation."
        - type: text
          content: "Iterative parameter refinement remains central to creative authoring, even with generative AI. In VR, mouse and raycasting interaction constrain direct, sustained manipulation, while mid-air hand interaction introduces fatigue and targeting instability. How can we support fluid, precise, and embodied parameter control in VR?"
    middle:
      elements:
        - type: heading
          content: "Approach."
        - type: text
          content: "<em>Desk Console</em> maps abstract GUI parameters to familiar physical actions, such as pressing, sliding, and rotating, through 3D controls integrated with an everyday desk. Spatially multiplexed controls enable direct bare-hand manipulation with passive haptic support."
    right:
      elements:
        - type: heading
          content: "Contribution."
        - type: text
          content: "A surface-grounded interaction approach that turns an everyday physical surface into a medium for immersive authoring. Our study shows how this design reshapes exploratory refinement through denser control sequences, emergent coarse-to-fine exploration, and reduced interaction demand"

############# INTERFACE
  - type: main-heading 
    text: "Desk Console Interface"
  
  - type: paragraph
    text: "<em>Desk Console</em> maps 2D GUI inputs (0D/1D/2D) to spatially multiplexed 3D controls on a physical desk. Familiar bare-hand actions, such as pressing, sliding, and rotating, enable direct parameter manipulation with passive haptic support and simultaneous access to multiple controls."


  - type: columns-50-50
    class: interface-image-pair
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/Fig2_control_design.png"
          alt: "3D Represented Controls Mapped from Categorized UI Input Types Image"
          # caption: "Control Mapping. 2D GUI inputs (0D/1D/2D) are mapped to 3D controls operated through familiar bare-hand actions, including pressing, sliding, and rotating."
    right:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/perspective.gif"
          alt: "3D Represented Controls Mapped from Categorized UI Input Types Image"
          # caption: "**Integrated Authoring Interface.** Spatially multiplexed 3D controls on a physical desk enable direct, multi-parameter manipulation with passive haptic support."

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
            We conducted a within-subjects study (N=14), comparing <em>Desk Console</em>  with raycasting in an open-ended 3D scene composition task. We analyzed interaction logs, behavioral recordings, NASA-TLX, CSI, and interviews to examine parameter exploration, refinement strategies, and perceived workload.
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

  - type: heading
    text: "Finding 1. Denser and More Structured Control Interaction"
  - type: paragraph
    text: "Interaction timelines show denser control use over a shorter period with Desk Console, compared with sparser interactions spread over more time with raycasting. Participants completed the task faster (466.8 vs. 665.5 s, *p* = .027) and made more transitions between distinct controls per minute (6.8 vs. 4.3, *p* < .001). The timelines also show more clustered control sequences: participants often made consecutive adjustments within one control type before moving to another, while raycasting showed more fragmented and interleaved control use."
  - type: image
    path: "/assets/img/deskconsole/ismar-fig6-timelines.png"
    alt: "Participant interaction timelines comparing control use with raycasting and Desk Console"
    caption: "Interaction timelines show parameter usage over time"

        

  - type: heading
    text: "Finding 2. Emergent Coarse-to-Fine Exploration"
  - type: paragraph
    text: "Color-picker trajectories reveal a coarse-to-fine pattern with Desk Console: broad repositioning followed by sustained local refinement. Raycasting showed less structured exploration, while stable-refinement episodes were more frequent with Desk Console (1.01 vs. 0.08/min, p < .001)."
  - type: columns-50-50
    class: finding-color-image-pair
    left:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/ismar-fig8-color-trajectories.png"
          alt: "Color-picker trajectories and stable refinement clusters for all participants"
          caption: "**Color-picker trajectories** Point size indicates dwell time; circles mark stable refinement (≥0.3 s). Desk Console shows concentrated clusters versus broad wandering."
    right:
      elements: 
        - type: image 
          path: "/assets/img/deskconsole/ismar-fig9-color-distance.png"
          alt: "Cumulative color-distance trajectories comparing raycasting and Desk Console"
          caption: "**Cumulative color-distance** Desk Console shows staircase patterns (plateaus: fine adjustments; jumps: coarse shifts), versus continuous slopes with raycasting."



  - type: heading
    text: "Finding 3. Lower Perceived Workload, Greater Exploration"
  - type: columns-50-50
    class: finding-workload-image-pair
    left:
      elements:
        - type: image
          path: "/assets/img/deskconsole/tlx.png"
          alt: "NASA-TLX subscale scores comparing raycasting and Desk Console"
          caption: "**NASA-TLX** Desk Console showed lower perceived workload on five of six subscales, attributed by participants to familiar desk-based actions and physical support."
    right:
      elements:
        - type: image
          path: "/assets/img/deskconsole/csi.png"
          alt: "Creativity Support Index subscale scores comparing raycasting and Desk Console"
          caption: "**Creativity Support Index** Desk Console scored higher on all five subscales. Participants described the desk as a spatial reference for finer control and exploration."

 


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
            Spatially multiplexed controls supported bimanual interaction.
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
          content: "Reduced Visual Verification"
        - type: text 
          content: |
            Physical grounding helped users adjust parameters by feel, reducing the need to repeatedly check control values.
            > “With Desk Console, it feels secure in my hand [...] I don’t really look at the controls and just focus on the task at hand.” (P6)
  # - type: columns-66-33
  #   left:
  #     elements: 
  #       - type: image 
  #         path: "/assets/img/deskconsole/trace.png"
  #         alt: "Color Exploration Patterns in the Color Picker Image"
  #   right:
  #     elements: 
  #       - type: heading 
  #         content: "Color Exploration Patterns"
  #       - type: text 
  #         content: |
  #           Interviews revealed distinct experiences with the color picker across the two interfaces. To examine this further, log data that captured traces on the color picker was visualized. The results show more frequent adjustments in raycasting, while Desk Console supported finer, adjacent color exploration.
  #           > "I could easily find other shades of red and make decisions like, 'I should use this red color.'" (P11) 


---

Immersive authoring provides a powerful 3D content creation experience in virtual reality (VR) by freeing users from the tedious loop of desktop editing and VR validation. However, complex control panels required for creative tasks often disrupt immersion with awkward or unstable spatial interactions. To address this, we present Desk Console, an authoring interface that transforms 2D control panels into virtual 3D controls on a physical desk, enabling tangible spatial interaction similar to real-world interactions. Desk Console transforms traditional control panels into 3D representations based on input types and provides passive haptic feedback through the desk’s physical surface. We demonstrate Desk Console’s capabilities through an interactive 3D scene design application.
