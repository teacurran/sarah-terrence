---
layout: default
title: Our Wedding
permalink: /our-wedding/
featured_image: /images/fall_background.png
---

Google photos below

{% google_photos https://photos.app.goo.gl/q6SrgLdT3hucRFuz6 200 %}

<script src="https://cdn.jsdelivr.net/npm/publicalbum@latest/embed-ui.min.js" async></script>

<div class="pa-gallery-player-widget" style="width:100%; height:480px; display:none;"
  data-link="<Album link>"
  data-title="<Album Name>"
  data-description="<Album Description>"
  data-delay="5"
  id="MyAlbum1">
</div>

<script>
  let MyAlbum1 = document.getElementById('MyAlbum1');
  let imageWidth = '0';
  for(var i in googlePhotos.urls) {
    let picture = document.createElement('object');
    picture.setAttribute("data", googlePhotos.urls[i] + '=w' + imageWidth);
    MyAlbum1.appendChild(picture);
  }
</script>
did it work?
