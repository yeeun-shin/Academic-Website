---
layout: publication
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
video_url: "https://youtu.be/1MqZkuYSov8?si=4pP3fqcSIGgG4TWn"

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
    text: "WHAT IF WE COULD PLAY WITH SPACE?"
  - type: paragraph
    text: "Most VR games emphasize object manipulation, treating space as a passive backdrop. Yet in VR, space is fundamental to immersion and presence. This project reimagines space as an active medium of interaction, inviting users to engage with the virtual environment as Space itself."

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
    text: "|CHALLENGES| **1. Interaction Accessibility**: Interacting with VR environments can be ambiguous and challenging, often requiring players to focus on complex controls rather than the experience itself. **2. Spatial Perception**: Players may struggle to understand and manipulate near and far spaces intuitively within the virtual environment.
      |APPROACH| To achieve this, a formative study was conducted to observe how players interacted and perceived near and far spaces in order to design game interaction. Insights obtained through thematic analysis of interview scripts and observed participants’ behavior during the study.|"

  - type: image
    path: "/assets/img/spatialchef/formative.gif"
    alt: "Spatial Chef Formative Study"


############# Interaction Design 
  - type: heading 
    text: "<br>Interaction Design"

  - type: paragraph
    text: "Building on players’ perception of distant and near spatial transformations, I designed interaction gestures grounded in the sensing capabilities of the Oculus HMD and controllers. These gestures were implemented as actions distinguishable by head and hand positional data, providing a consistent and technically reliable method for spatial manipulation without additional tracking hardware."
  - type: image
    path: "/assets/img/spatialchef/interactiond.gif"
    alt: "Spatial Chef Three Interaction"


############# Game Phase Design
  - type: heading 
    text: "<br>Game Phase Design"
  
  - type: paragraph
    text: "Our game is designed to seamlessly shift the player's focus from objects to space. It's played in three phases to inspire and provide enjoyment in interacting with the game space."

  - type: 'columns-33-33-33'
    left:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_prep.gif"
          alt: "Spatial Chef Phase 1"
        - type: 'text'
          content: |
            **1. Preparation Phase for shifting focus and motivation** As players choose materials and music for the room-scale space, their focus shifts naturally from objects to the space itself, sparking a desire for customization and motivating them to actively transform the space to their taste in the next step.
    middle:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_game.gif"
          alt: "Spatial Chef Phase 2"
        - type: 'text'
          content: |
            **2. Cooking Phase for spatial interaction** In this stage, players use their bodies to transform the surrounding room-scale space—slicing, stretching, inflating, or shrinking it. To maintain focus on spatial interaction, all objects move only with the room rather than independently.
    right:
      elements:
        - type: image 
          path: "/assets/img/spatialchef/phase_serve.gif"
          alt: "Spatial Chef Phase 3"
        - type: 'text'
          content: |
            **3. Serving Phase for enhancing the fun** This stage deepens spatial fun by replaying players’ movements as a reward. The transformed space is served as a miniature dish with a recipe that reflects their action. It enriches spatial engagement by letting players view the space as a whole and relive their movements from the outside.

  - type: image
    path: "/assets/img/spatialchef/concept.png"
    alt: "Spatial Chef Concept"


############# IMPLEMENTATION
  - type: heading 
    text: "<br>Implementation"

  - type: paragraph
    text: "We devised techniques to maintain the structural and visual coherence of the space as the player transforms it in order to preserve the experience of manipulating a space within a space. Used Oculus Quest 2 and Unity XR toolkits for implementation."
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
    text: "<br>Qualitative Findings (Thematic Analysis)"
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
            The participants felt a sense of absolute power and presence as players when manipulating the space, which was a unique experience that made them more aware of their surroundings. Similarly, the quantitative evaluation also reflected a high level of presence, with an average score of 5.11, consistent with the interview statements.
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
