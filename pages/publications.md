---
layout: basic
body_classes: page-basic page-publications
title: Publications
permalink: /publications/
description: Peer-reviewed publications. * denotes equal contribution.
wide_content: true
---

<div class="publications">
  {% bibliography --query @*[keywords!=thesis&&keywords!=manuscript] %}
</div>

<div class="publications thesis-section">
  <h2 class="thesis-title">Thesis</h2>
  {% bibliography --query @*[keywords=thesis] %}
</div>
