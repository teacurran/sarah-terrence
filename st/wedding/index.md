---
layout: page
title: Our Wedding
permalink: /wedding/
featured_image: /images/fall_background.png
---

We were married October 22, 2021 at the City Hall in Providence, Rhode Island. The ceremony was officiated by a judge, with just our families present. We celebrated with a meal at New Rivers, our favorite restaurant in Providence, followed the next day by a brunch hosted by Curran’s.  We are waiting on the photos from our photographer but here are some snapshots that capture the weekend perfectly.

<div class="gallery" data-columns="3">
{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "wedding" %}
      {% for image in gallery.images %}
        <img src="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/{{ image.src }}" />
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endfor %}
</div>
