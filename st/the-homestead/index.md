---
title: The Homestead
subtitle: Our hillside in Vermont's Northeast Kingdom
description: Description of the Property
featured_image: /images/bg_backyard_aerial_summer_2021.jpg
layout: page

---
The property is 42 acres, primarily wooded with about 2 acres flat around the house. 

One of the main pros (and also cons) of this house is the location and proximity to [US Route 302](https://en.wikipedia.org/wiki/U.S._Route_302). The house is situated at the lowest/ flattest part of the property, and is just about 50 feet from the main road. This makes it a prime location for a road-side farm stand. 

One of the previous owners (Dr. Page, I believe) was an avid gardener, and the yard has beautiful lilacs, hydrangea, day lilies, peonies, roses, and hostas. The flower beds need some tending, but I look forward to reviving them and planting a kitchen garden, cutting garden, and also adding some perennial shrubs, flowers, and grasses to the hillsides surrounding the house. 

Included in the sale of the house were 2 shipping containers- 1 is 100 ft. long, the other 50 ft. long. TBD on how/ where those will be repurposed. Currently, they are positioned to the right of the house, in the basketball “court”. The BBall court gives way to a former hayfield all the way to the properties edge- designated by a stone wall that follows the property line up into the woods. 

To the left of the house there is another access driveway that leads up to a sand/gravel pit and into the woods. There are groves of sumac, patches of goldenrod and wildflowers, Eastern White Pine, Maple, Beech, Birch, and Apple trees. 

<div class="content">
    <a href="/images/map_2021-11-01.png" class="fluidbox left small">
        <img src="/images/map_2021-11-01.png" />
    </a>
</div>

Terrence and I have been hiking nearly every day, and have been scouting and mapping the property- working on trail maintenance, trash removal/ cleanup and marking trails. Thus far, we’ve counted 50+ apple trees. Based on the density and planting patterns it seems likely that the property was mostly clear cut with pasture and apple trees all the way to the neighboring property- with apple trees lining what were once roads/ trails. We’ve hired Todd Parlo from [Waldon Heights Orchards](https://waldenheightsnursery.com/) as a mentor, and he's prepared a report with specifics on the soil type, elevation, and recommendations for pruning and restoring the health/productivity of the trees.  

Terrence mapped the tap lines- seems like there are about 150 total trees tapped in the south east and central portion of the property. We'll write more about this project as it develops. 
<div class="gallery" data-columns="3">

{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "homestead" %}
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
