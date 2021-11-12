---
title: 'The Flower Shop'
subtitle: 'Planting seeds'
date: 2021-11-06 00:00:00
featured_image: '/images/bg_flowershop.png' 
---
One of my projects this coming summer now that I’ve graduated from container gardening is to plant a kitchen garden, a flower cutting garden, and to cultivate a wider variety of native perennials in the hillside meadows. Terrence has been talking about bees, and so the flower shop will be a nice companion to this venture. 

<div class="gallery" data-columns="3">
{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "flowershop" %}
      {% for image in gallery.images %}
        <a href="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/{{ image.src }}">
            <img src="/{{ site.gallery.dir }}/{{ gallery['gallery'] }}/thumbs/{{ image.src }}" />
        </a>
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endfor %}
</div>
