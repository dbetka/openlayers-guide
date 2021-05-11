# Icon

Example how to draw single scaled and rotated icon from a file by vectors.

<!-- tabs:start -->

#### **Global OL**

```js
const source = new ol.source.Vector()

const feature = new ol.Feature({
  geometry: new ol.geom.Point(ol.proj.fromLonLat([18.47971847152585, 54.537575415956965])),
})
feature.setStyle(new ol.style.Style({
  image: new ol.style.Icon({
    anchor: [16, 16], // anchor to center of icon
    anchorXUnits: 'pixels',
    anchorYUnits: 'pixels',
    scale: 0.5,
    rotation: 0.5, // radians
    src: '/arrow-64.png', // icon url
  }),
}))

source.addFeature(feature)
const layer = new ol.layer.Vector({ source })
// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**

```js
import Feature from 'ol/Feature'
import Point from 'ol/geom/Point'
import VectorLayer from 'ol/layer/Vector'
import VectorSource from 'ol/source/Vector'
import { Icon, Style } from 'ol/style'
import { fromLonLat } from 'ol/proj';

const source = new VectorSource()

const feature = new Feature({
  geometry: new Point(fromLonLat([18.47971847152585, 54.537575415956965])),
})
feature.setStyle(new Style({
  image: new Icon({
    anchor: [16, 16], // anchor to center of icon
    anchorXUnits: 'pixels',
    anchorYUnits: 'pixels',
    scale: 0.5,
    rotation: 0.5, // radians
    src: '/arrow-64.png', // icon url
  }),
}))

source.addFeature(feature)
const layer = new VectorLayer({ source })
// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to use VectorSource](sources/vector.md)
* [How to use VectorLayer](layers/vector.md)
