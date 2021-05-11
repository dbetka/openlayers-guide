# Restrict zoom levels to integers

Example how to restrict zoom levels to integers.

```js
const view = new ol.View({
  center: ol.proj.fromLonLat([0, 0]),
  minZoom: 3,
  zoom: 4,
})

const map = new ol.Map({
  target: 'mapContainer',
  view,
  interactions: ol.interaction.defaults({ mouseWheelZoom: false }).extend([
    new ol.interaction.MouseWheelZoom({
      constrainResolution: true,
    }),
  ]),
})
```
