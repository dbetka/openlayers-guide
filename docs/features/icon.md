# Icon

Example how to draw single scaled and rotated icon from a file by vectors.

```js
import Feature from 'ol/Feature'
import Point from 'ol/geom/Point'
import VectorLayer from 'ol/layer/Vector'
import VectorSource from 'ol/source/Vector'
import { Icon, Style } from 'ol/style'

const arrowsSource = new VectorSource()

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

arrowsSource.addFeature(feature)
const layer = new VectorLayer({
  source: arrowsSource,
})

// Here should be creating Map
// Explanation how create map is below in "Related pages"
map.addLayer(layer)
```

#### Related pages:
* [How to use VectorSource](sources/vector.md)
* [How to use VectorLayer](layers/vector.md)
[comment]: <> (* ~~How to use Feature~~<!--[]&#40;features/feature.md&#41; -->)
[comment]: <> (* ~~How to use Point~~<!--[]&#40;features/point.md&#41; -->)
