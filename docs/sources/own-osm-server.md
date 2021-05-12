# VectorSource

Example how to use VectorSource.

<!-- tabs:start -->
#### **Global OL**
```js
const layer = new ol.layer.Tile({
  className: 'my-own-osm-css-class',
  source: new ol.source.OSM({
    url: 'https://my-own-osm-server.com/{z}/{x}/{y}.png',
  }),
})

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**
```js
import Tile from 'ol/layer/Tile'
import OSM from 'ol/source/OSM'

const layer = new ol.layer.Tile({
  className: 'my-own-osm-css-class',
  source: new OSM({
    url: 'https://my-own-osm-server.com/{z}/{x}/{y}.png',
  }),
})

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```
<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to use VectorLayer](layers/vector.md)
