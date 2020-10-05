# Vector

Example how to draw line.

[How to create map](docs/beginner/first-run-es6.md)
[How to create map](docs/features/lines.md)

```js
const vectorSource = new VectorSource()

// Adding features to vectorSource
// Information how you can do it is in link above this example

const vectorLayer = new VectorLayer({
  source: vectorSource,
  style: new Style({
    stroke: new Stroke({
      color: '#ffcc33',
      width: 2
    })
  })
})

// Explanation how create map is in link above this example
map.addLayer(vectorLayer)
```
