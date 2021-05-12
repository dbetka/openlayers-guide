# CanvasLayer

Example how to use Canvas as Layer.

<!-- tabs:start -->

#### **Global OL**

```js
// Explanation how create map is below in "Related pages"
const map = new ol.Map({
  // ...
  pixelRatio: 1, // Remember to set pixelRatio parameter on 1
  // ...
})
  
const canvasLayer = new ol.layer.Image({
  source: new ol.source.ImageCanvas({
    canvasFunction,
    projection: 'EPSG:3857',
    ratio: 1,
  }),
})

canvasLayer.setZIndex(10)

map.addLayer(canvasLayer) // show
```

#### **ES6 modules**

```js
import Map from 'ol/Map'
import Image from 'ol/layer/Image'
import ImageCanvas from 'ol/source/ImageCanvas'

// Explanation how create map is below in "Related pages"
const map = new Map({
  // ...
  pixelRatio: 1, // Remember to set pixelRatio parameter on 1
  // ...
})
  
const canvasLayer = new Image({
  source: new ImageCanvas({
    canvasFunction,
    projection: 'EPSG:3857',
    ratio: 1,
  }),
})

canvasLayer.setZIndex(10)

map.addLayer(canvasLayer) // show
```

<!-- tabs:end -->

Use below code to hide CanvasLayer.
```js
map.removeLayer(canvasLayer)
```

After each change on Canvas run the following code:
```js
canvasLayer.getSource().refresh()
```

#### Related pages:
* [How to create map](beginner/first-run.md)
* [How to create line](features/line.md) and add this feature to vectorSource
