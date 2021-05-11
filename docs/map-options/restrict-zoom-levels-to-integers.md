# Restrict zoom levels to integers

Example how to restrict zoom levels to integers.

<!-- tabs:start -->

#### **Global OL**

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

#### **ES6 modules**

```js
import Map from 'ol/Map'
import View from 'ol/View'
import { defaults, MouseWheelZoom } from 'ol/interaction'
import { fromLonLat } from 'ol/proj'

const view = new View({
  center: ol.proj.fromLonLat([0, 0]),
  minZoom: 3,
  zoom: 4,
})

const map = new Map({
  target: 'mapContainer',
  view,
  interactions: defaults({ mouseWheelZoom: false }).extend([
    new MouseWheelZoom({
      constrainResolution: true,
    }),
  ]),
})
```

<!-- tabs:end -->
