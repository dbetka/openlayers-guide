# Line

Example how to draw line.

[VectorSource](docs/sources/vector.md)

```js
const source = new VectorSource()
const linePath = [
  [53.2341, 18.2352], // lon, lat
  [55.22351, 17.2352],
  [56.351, 16.2352],
  [58.2645, 6.2352]
]
const polyline = new LineString(linePath)
// Coordinates need to be in the view's projection, which is
// 'EPSG:3857' if nothing else is configured for your ol.View instance
polyline.transform('EPSG:4326', 'EPSG:3857')

source.addFeature(new Feature(polyline))
```
