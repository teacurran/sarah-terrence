---
layout: page
title: Our Wedding
permalink: /wedding/
featured_image: /images/bg_wedding_rings.jpg
---

We were married October 22, 2021 at the City Hall in Providence, Rhode Island. The ceremony was officiated by a judge, with just our families present. We celebrated with a meal at [New Rivers](https://www.newriversrestaurant.com/), our favorite restaurant in Providence, followed the next day by a brunch hosted at the Curran’s.  We are waiting on the photos from our photographer but here are some snapshots that capture the weekend perfectly.


<div class="gallery" data-columns="3">
{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "wedding" %}
      {% for image in gallery.images %}
        <a href="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/{{ image.src }}"
            data-pswp-width="{{ image.display_dimensions.width }}" 
            data-pswp-height="{{ image.display_dimensions.height }}"
            ><img src="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/thumbs/{{ image.src }}" />
        </a>
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endfor %}
</div>
