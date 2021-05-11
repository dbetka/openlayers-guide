# VectorSource

Example how to use VectorSource.

<!-- tabs:start -->

#### **Global OL**

```js
const source = new ol.source.Vector()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const layer = new ol.layer.Vector({ source })
// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**

```js
import VectorSource from 'ol/source/Vector'
import VectorLayer from 'ol/layer/Vector'

const source = new VectorSource()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const layer = new VectorLayer({ source })
// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to use VectorLayer](layers/vector.md)
