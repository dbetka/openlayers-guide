# VectorLayer

Example how to use VectorLayer.

<!-- tabs:start -->

#### **Global OL**

```js

const source = new ol.source.Vector()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const layer = new ol.layer.Vector({
  source,
  // Define Style for above source 
  style: new ol.style.Style({
    stroke: new ol.style.Stroke({
      color: '#ffcc33',
      width: 2
    })
  })
})

layer.setZIndex(15)

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**

```js
import VectorSource from 'ol/source/Vector'
import VectorLayer from 'ol/layer/Vector'
import { Stroke, Style } from 'ol/style'

const source = new VectorSource()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const layer = new VectorLayer({
  source,
  // Define Style for above source 
  style: new Style({
    stroke: new Stroke({
      color: '#ffcc33',
      width: 2
    })
  })
})

layer.setZIndex(15)

// Here should be map definition
map.addLayer(layer) // Explanation how create map is below in "Related pages"
```

<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to create line](features/line.md) and add this feature to vectorSource
