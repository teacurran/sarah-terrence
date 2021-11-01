---
layout: default
title: Our Wedding
permalink: /wedding/
featured_image: /images/fall_background.png
---

<style TYPE="text/css">
.gallery-image-wrapper {
  height: 300px;
  width: 300px;
  display: inline-block;
  margin: 1em;
  position: relative;
}
.gallery-image {
  margin: auto;
  position: absolute;
  top: 0px;
  bottom: 0px;
  max-height: 100%;
  max-width: 100%;
}
</style>
<div class="gallery">
{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "wedding" %}
      {% for image in gallery.images %}
        <div class="gallery-image-wrapper">
          <a id="{{ image.name }}"></a>
          <a href="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/{{ image.src }}">
            <img class="gallery-image" src="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/thumbs/{{ image.src }}" />
          </a>
        </div>
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endfor %}
</div>