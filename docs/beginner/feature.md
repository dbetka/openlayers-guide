# Feature

Example how to simply use feature.

<!-- tabs:start -->

#### **Global OL**
```js
const source = new ol.source.Vector()

const feature = new ol.Feature({
  geometry: new ol.geom.Point(ol.proj.fromLonLat([18.47971, 54.53757])),
})

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
import { fromLonLat } from 'ol/proj';

const source = new VectorSource()

const feature = new Feature({
  geometry: new Point(fromLonLat([18.47971, 54.537575])),
})

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
