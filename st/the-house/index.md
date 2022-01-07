---
title: The House
subtitle: The Brick House of Groton 
description: The Brick House of Groton circa 1840.
featured_image: /images/bg_flower.jpg
layout: page

---

![](/images/house_summer_2021.jpg)

Terrence began looking at properties the summer of 2020, and on January 6th, 2021 closed on this property in Vermont. 

The property has 3 distinct but connected buildings: The brick house, the white house, and the barn, which joins the two. 

The brick house was built by John Taisey in 1840, the barn shortly thereafter. The white house was built by John’s son, George, in 1881. 

We’ve made ourselves quite cozy in the brick house. There are a few big projects (modernizing the kitchen, refreshing the bathrooms and also infrastructure work like electric/plumbing, chimney repairs, and basement cleanout). 

The barn and white house will require some structural work, with the white house needing major interior renovations (been abandoned for quite some time). Parts of the barn have been converted into interior living space- and so there’s also some challenges with the heating system (currently oil).  

The Groton Historical Society has been a great resource for learning about the history of the house and the town. We visited the historical society during their Late Summer open house, and met the Historical Society President Deborah Jurist. We learned that ours is the only brick house in town- with a granite foundation, to boot! [She shared with us the file they have on our house](/docs/the_brick_house_of_groton.pdf)), as well as pointed out the painting of the house that is part of their collection. 

The painting shifted our perspective of the property and the buildings on it. Prior to seeing the painting we thought that the garage and white house were 20th century additions. Knowing that the barn and white house are of the same era as the Brick house changes how we will move forward with using the spaces and the preservation/ restoration of the property. 

<div class="gallery" data-columns="3">
{% for p in site.pages %}
  {% for gallery in p.galleries %}
    {% if gallery['gallery'] == "house" %}
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
