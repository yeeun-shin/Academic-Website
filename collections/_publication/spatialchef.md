---
layout: research-publication
title: "Spatial Chef: A Spatial Transforming VR Game with Full Body Interaction"

authors:
  - name: Yeeun Shin
    link: "https://yeeunshin.com/"
    equal_contrib: true
  - name: Yewon Lee
    equal_contrib: true
  - name: Sungbaek Kim
    equal_contrib: true
  - name: Soomin Park
    equal_contrib: true

conference: "CHI 2023 Student Game Competition"
equal_contrib_notice: false 

paper_url: "https://doi.org/10.1145/3544549.3583826" 
pdf_url: "/assets/pdf/SpatialChef.pdf"
video_url: "https://youtu.be/1MqZkuYSov8?si=4pP3fqcSIGgG4TWn"

awards:
  - label: "Student Game Competition Finalist (Category Innovative Interfaces)"
    url: "https://chi2023.acm.org/for-authors/student-game-competition/"

teaser_video: "assets/video/Spatialchef_Teaser.mp4"


youtube_id: "1MqZkuYSov8" 
post_video_image: "/assets/img/spatialchef/sgc.png"


bibtex: |
  @inproceedings{shin2023spatialchef,
  author    = {Yeeun Shin and Yewon Lee and Sungbaek Kim and Soomin Park},
  title     = {Spatial Chef: A Spatial Transforming VR Game with Full Body Interaction},
  booktitle = {Extended Abstracts of the 2023 CHI Conference on Human Factors in Computing Systems (CHI EA '23)},
  year      = {2023},
  doi       = {10.1145/3544549.3583826},
  url       = {https://doi.org/10.1145/3544549.3583826}
  }



additional_content:
############# Motivation
  - type: main-heading 
    text: "What if We Could Manipulate Space Itself?"
  - type: paragraph
    text: "Conventional VR interactions focus on manipulating objects, treating the surrounding environment as a passive backdrop. *Spatial Chef* explores a different paradigm: directly transforming room-scale virtual space through body movements. We developed a set of spatial interaction techniques grounded in how people perceive and manipulate near and distant spaces."

  - type: image
    path: "/assets/img/spatialchef/objectspace.png"
    alt: "Spatial Chef Motivation"

############# Realted Works
  - type: main-heading 
    text: "Realted Works"

  - type: image
    path: "/assets/img/spatialchef/Relatedworks.png"
    alt: "Spatial Chef Formative Related Works"

############# Formative Study
  - type: main-heading 
    text: "Formative Study"
  - type: paragraph
    text: "|**RESEARCH QUESTION.** <br> How do people intuitively map body movements to transformations of near and distant virtual spaces?
      |**METHOD.**  We conducted a formative study with 5 participants using bodystorming and Wizard-of-Oz prototyping. Participants enacted movements they associated with near and distant spatial transformations, allowing us to identify interaction patterns through behavioral observations and semi-structured interviews.|"

  - type: image
    path: "/assets/img/spatialchef/formative.gif"
    alt: "Spatial Chef Formative Study"


############# Interaction Design 
  - type: heading 
    text: "<br>Spatial Interaction Techniques"

  - type: paragraph
    text: "Building on the formative study findings, I developed **three body-driven interaction techniques for room-scale spatial manipulation**. I mapped head and controller movements to distinct spatial transformations, including collision-based slicing, direct dragging, and whole-body expansion and contraction. These techniques reflect users’ perceptions of near and distant space and operate using Oculus HMD and controller tracking without additional hardware."
  - type: image
    path: "/assets/img/spatialchef/interactiond.gif"
    alt: "Spatial Chef Three Interaction"


############# Game Phase Design
  - type: heading 
    text: "<br>Game Phase Design"
  
  - type: paragraph
    text: "To shift players’ attention from individual objects to the surrounding space, we structured the game into three phases: Preparation, Cooking, and Serving. Each phase progressively introduces, supports, and reflects on spatial interaction."

  - type: 'columns-33-33-33'
    left:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_prep.gif"
          alt: "Spatial Chef Phase 1"
        - type: 'text'
          content: |
            **1. Preparation Phase: Shifting Focus** Players select materials and music for the virtual room, shifting their attention from individual objects to the surrounding space and motivating them to customize it.
    middle:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_game.gif"
          alt: "Spatial Chef Phase 2"
        - type: 'text'
          content: |
            **2. Cooking Phase: Spatial Manipulation** Players transform the surrounding room through body movements, including slicing, stretching, inflating, and shrinking. To maintain the focus on spatial interaction, objects transform together with the room rather than independently.
    right:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_serve.gif"
          alt: "Spatial Chef Phase 3"
        - type: 'text'
          content: |
            **3. Serving Phase: Rewarding Spatial Exploration** The transformed space is presented as a miniature dish with a personalized recipe mapping the player's choices and actions to cooking attributes: number of interactions to difficulty, and final spatial configuration to taste. This allows players to revisit their spatial transformations and reflect on the resulting creation.

  - type: image
    path: "/assets/img/spatialchef/concept.png"
    alt: "Spatial Chef Concept"


############# IMPLEMENTATION
  - type: heading 
    text: "<br>Implementation"

  - type: paragraph
    text: "We implemented a room-scale spatial transformation system in Unity for Oculus Quest 2, enabling users to reshape the surrounding environment while preserving its structural and visual continuity. Rather than simply separating sliced meshes, the system dynamically generates connecting geometry between displaced wall segments to maintain a continuous spatial structure. UV coordinates are mapped onto the newly generated surfaces to preserve visual coherence during deformation."
  - type: image
    path: "/assets/img/spatialchef/implementation.png"
    alt: "Spatial Chef Implementation"
  - type: image
    path: "/assets/img/spatialchef/implementation_graphic.gif"
    alt: "Spatial Chef Implementation"


############# EVALUATION
  - type: main-heading 
    text: "Evaluation"
  - type: image
    path: "/assets/img/spatialchef/userstudy_spatial.png"
    alt: "Spatial Chef User Study"
  
############# RESULT
  - type: heading 
    text: "Quantitative Results"

  - type: image
    path: "/assets/img/spatialchef/GDP-CHI-PR-0120_S7_UserStudy.png"
    alt: "Spatial Chef results"
  
  - type: heading 
    text: "<br>Qualitative Findings (thematic analysis)"
  - type: 'columns-33-33-33'
    left:
      elements:
        - type: 'heading'
          content: 'Novel and Intuitive Spatial Manipulation.'
        - type: 'text'
          content: |
            Participants found it refreshing to interact with the space itself rather than with individual objects. Although spatial manipulation was initially unfamiliar, it was perceived as intuitive and natural.Five participants selected the arm-swing gesture as the most natural manipulation, citing its alignment with the audio-visual feedback from immediate spatial changes.
            > “Normally, VR games focus on objects, but it was refreshing to interact with the space itself by stretching and contracting it” <br> 
            > “It was easy and intuitive in that it was possible to control a space of ambiguous concept through realistic body movements.”
    middle:
      elements:
        - type: 'heading'
          content: 'Being Both a Player and an Absolute.'
        - type: 'text'
          content: |
            The participants felt a sense of absolute power and presence as players when manipulating the space, which was a unique experience that made them more aware of their surroundings. The quantitative evaluation also indicated a sense of presence (M = 5.10, SD = 1.46), consistent with participants’ interview responses.
            > "Space is a larger concept than objects. So I had a strong sense of being in the VR space because I was aware of everything around me rather than just the small objects... At the same time, I felt like I had absolute power because I could bend space with my gestures alone."
    right:
      elements:
        - type: 'heading'
          content: 'Realized Fantasy Stimulating Creativity.'
        - type: 'text'
          content: |
            Viewing the transformed space during the game, participants reacted as follows. Participants presented creative spatial transformation results to suit their tastes, associating fantasy imaginations. In particular, the more the room was transformed, the more abstract the room itself became, encouraging their creativity.
            > "Look! I'm in Interstellar right now." <br> 
            > "It reminds me of Harry Potter. It's fun to see unexpected graphics that seem to be in the real world."

  - type: image
    path: "/assets/img/spatialchef/usertaste.png"
    caption: "Creative outcomes reflecting each player’s taste"
    alt: "Spatial Chef results"


---

How can we play with space? We present Spatial Chef, a spatial cooking game that focuses on interacting with space itself, shifting away from the conventional object interaction of virtual reality (VR) games. This allows players to generate and transform the virtual environment (VE) around them directly. To capture the ambiguity of space, we created a game interface with full-body movement based on the player’s perception of spatial interaction. This was evaluated as easy and intuitive, providing clues for the spatial interaction design. Our user study reveals that manipulating virtual space can lead to unique experiences: Being both a player and an absolute and Experiencing realized fantasy. This suggests the potential of interacting with space as an engaging gameplay mechanic. Spatial Chef proposes turning the VE, typically treated as a passive backdrop, into an active medium that responds to the player’s intentions, creating a fun and novel experience.
