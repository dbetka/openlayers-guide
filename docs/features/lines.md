# Line

Example how to draw single line by vectors.

[VectorSource](docs/sources/vector.md)

```js
import VectorSource from 'ol/source/Vector'
import LineString from 'ol/Feature'
import Feature from 'ol/Feature'

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
// Here should be adding source to map be VectorLayer
// Explanation how to add VectorSource to map is below in "Related pages"
```

#### Related pages:
* [How to use VectorSource](docs/sources/vector.md)
