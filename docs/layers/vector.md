# VectorLayer

Example how to use VectorLayer.

```js
import VectorSource from 'ol/source/Vector'
import VectorLayer from 'ol/layer/Vector'
import { Stroke, Style } from 'ol/style'

const vectorSource = new VectorSource()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const vectorLayer = new VectorLayer({
  source: vectorSource,
  // Define Style for above source 
  style: new Style({
    stroke: new Stroke({
      color: '#ffcc33',
      width: 2
    })
  })
})

// Here should be creating Map
// Explanation how create map is below in "Related pages"
map.addLayer(vectorLayer)
```

#### Related pages:
* [How to create map](docs/beginner/first-run-es6.md)
* [How to create line](docs/features/lines.md) and add this feature to vectorSource
