# Tile Layer

Example how to use Tile Layer.

<!-- tabs:start -->
#### **Global OL**
```js
const layer = new ol.layer.Tile({
  className: 'my-own-osm-css-class',
  source: new ol.source.OSM(),
  // opacity: 1,
  // visible: true,
  // zIndex: 12,
})

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**
```js
import Tile from 'ol/layer/Tile'
import OSM from 'ol/source/OSM'

const layer = new Tile({
  className: 'my-own-osm-css-class',
  source: new OSM(),
  // opacity: 1,
  // visible: true,
  // zIndex: 12,
})

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```
<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to use own OSM server](sources/own-osm-server.md)
