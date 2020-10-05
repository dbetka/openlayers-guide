# VectorSource

Example how to use VectorSource.

```js
import VectorSource from 'ol/source/Vector'
import VectorLayer from 'ol/layer/Vector'

const vectorSource = new VectorSource()

// Adding features to vectorSource should be here
// Explanation how you can add features to vectorSource is below in "Related pages"

const vectorLayer = new VectorLayer({
  source: vectorSource,
})
// Explanation how add vectorLayer to map and customize it is below in "Related pages"
```

#### Related pages:
* [How to use VectorLayer](docs/layers/vector.md)
