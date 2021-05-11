# CanvasLayer

Example how to use Canvas as Layer.

```js
import Image from 'ol/layer/Image'
import ImageCanvas from 'ol/source/ImageCanvas'

// Explanation how create map is below in "Related pages"
const map = new ol.Map({
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

map.addLayer(layer) // show
```

Use below code to hide CanvasLayer.
```js
map.removeLayer(layer)
```

After each change on Canvas run the following code:
```js
canvasLayer.getSource().refresh()
```

#### Related pages:
* [How to create map](beginner/first-run-es6.md)
* [How to create line](features/line.md) and add this feature to vectorSource
