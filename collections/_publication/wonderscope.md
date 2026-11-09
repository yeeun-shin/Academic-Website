---
layout: research-publication
permalink: /publication/wonderscope/
abstract_side_gallery: true
title: "WonderScope: Practical Near-surface AR Device for Museum Exhibits"
description: "A practical near-surface augmented-reality device that spatially registers digital content on museum exhibits using a compact sensing peripheral."
image: "/assets/img/gallery/ar/wonderscope.gif"  
conference: "ACM SIGGRAPH 2022 Emerging Technologies"

authors:
  - name: HyeonBeom Yi
  - name: Yeeun Shin
    link: "https://yeeunshin.com/"
  - name: Sehee Lee
  - name: Eunhye Youn
  - name: Auejin Ham
  - name: Geehyuk Lee
  - name: Woohun Lee

paper_url: "https://doi.org/10.1145/3532721.3535564"
pdf_url: "/assets/pdf/WonderScope-Practical-Near-surface-AR-Device-for-Museum-Exhibits.pdf"
video_url: "https://youtu.be/X2MyAXRt7h4"
code_url: "https://github.com/wonderlab-kaist/WonderScope_2022"

media_coverage:
  - outlet: "KAIST News Center"
    title: "See-through exhibitions using smartphones: KAIST develops the AR magic lens, WonderScope"
    url: "https://www.kaist.ac.kr/newsen/html/news/?GotoPage=1&mng_no=24270&mode=V&skey=keyword&sval=School+of+computing"
  - outlet: "Dong-A Science"
    title: "See Through Museum Exhibits with Your Smartphone"
    url: "https://www.dongascience.com/en/news/56230"

bibtex: |
  @inproceedings{WonderScope,
    author    = {HyeonBeom Yi and Yeeun Shin and Sehee Lee and Eunhye Youn and Auejin Ham and Geehyuk Lee and Woohun Lee},
    title     = {WonderScope: Practical Near-surface AR Device for Museum Exhibits},
    booktitle = {ACM SIGGRAPH '22 Emerging Technologies},
    year      = {2022},
    articleno = {12},
    numpages  = {2},
    doi       = {10.1145/3532721.3535564},
    url       = {https://doi.org/10.1145/3532721.3535564}
  }

awards:
  - label: "Emerging Technologies Honorable Mention"
    url: "https://s2022.siggraph.org/program/emerging-technologies/"
  - label: "iF Design Award 2023"
    url: "https://ifdesign.com/en/winner-ranking/project/wonderscope/549128"

keywords:
  - Near-surface AR
  - Unity 3D
  - Exhibition

detail_gallery_columns: 2
detail_gallery:
  - "/assets/img/gallery/ar/WonderScope_thumbnail.png"
  - "/assets/img/gallery/ar/wonderscope_Demo.gif"
  
  


content_blocks:
  - type: markdown
    content: |
      [![WonderScope Image1](/assets/img/gallery/ar/ws1.png)](/assets/img/gallery/ar/ws1.png)

  - type: columns-33-33-33
    class: overview-summary
    left:
      elements:
        - type: heading
          content: "Motivation."
        - type: text
          content: "Conventional mobile AR draws visitors’ attention to screens rather than physical exhibits. Overlaying content directly on exhibits requires surface tracking, often relying on printed markers or external infrastructure."
    middle:
      elements:
        - type: heading
          content: "Approach."
        - type: text
          content: "WonderScope turns familiar actions, such as scanning exhibits, touching surfaces, and moving toy vehicles, into ways of exploring spatially registered AR content. It combines RFID identification with Kalman-filtered fusion of two displacement sensors and an IMU for surface-relative tracking."
    right:
      elements:
        - type: heading
          content: "Contribution."
        - type: text
          content: "A near-surface AR approach that connects physical interaction with digital exploration. It supports handheld, wearable, and object-embedded interactions across acrylic, paper, wood, and fabric, requiring only a small RFID tag without visual markers or external tracking systems."

  - type: markdown
    class: wonderscope-image-stack
    content: |
      [![WonderScope Image2](/assets/img/gallery/ar/ws2.png)](/assets/img/gallery/ar/ws2.png)
      [![WonderScope Image3](/assets/img/gallery/ar/ws3.png)](/assets/img/gallery/ar/ws3.png)
      [![WonderScope Image4](/assets/img/gallery/ar/ws4.png)](/assets/img/gallery/ar/ws4.png)
      [![WonderScope Image5](/assets/img/gallery/ar/ws5.gif)](/assets/img/gallery/ar/ws5.gif)
      [![WonderScope Image6](/assets/img/gallery/ar/ws6.png)](/assets/img/gallery/ar/ws6.png)

  - type: image_grid
    class: wonderscope-final-grid
    grid:
      columns: 2
      items:
        - image: "/assets/img/gallery/ar/siggraph2.png"
        - image: "/assets/img/gallery/ar/siggraphdemo.gif"
        - image: "/assets/img/gallery/ar/siggraph3.png"
        - image: "/assets/img/gallery/ar/siggraph4.png"
        - image: "/assets/img/gallery/ar/siggraph5.png"
        - image: "/assets/img/gallery/ar/museum.png"


---

Mobile augmented reality (AR) applications have become essential tools for delivering additional information to museum visitors. However, interacting through a mobile screen can potentially distract visitors from the exhibits. We propose WonderScope, a peripheral system for mobile devices that enables practical near-surface AR interaction. Using a single small RFID tag on the exhibit as the origin, WonderScope detects the position and orientation of the device on the exhibit surface. It works across surfaces of different materials by fusing data from two displacement sensors and an inertial measurement unit. The mobile application uses this data to spatially register digital content, creating the experience of seeing through or magnifying an exhibit’s surface.
