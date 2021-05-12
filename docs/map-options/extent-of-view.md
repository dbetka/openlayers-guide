# Extent of View

Example how to get extent of View.

<!-- tabs:start -->
#### **Global OL**
```js
const mapContainer = document.getElementById(map.getTarget())
const rect = mapContainer.getBoundingClientRect()
const width = rect.width
const height = rect.height
map.updateSize()
const view = map.getView()
const extent = view.calculateExtent([width, height])
const [west, south, east, north] = ol.proj.transformExtent(extent, 'EPSG:3857', 'EPSG:4326')

const extentOfView = {
  width,
  height,
  west,
  south,
  east,
  north,
}
```

#### **ES6 modules**
```js
import { transformExtent } from 'ol/proj'

const mapContainer = document.getElementById(map.getTarget())
const rect = mapContainer.getBoundingClientRect()
const width = rect.width
const height = rect.height
map.updateSize()
const view = map.getView()
const extent = view.calculateExtent([width, height])
const [west, south, east, north] = transformExtent(extent, 'EPSG:3857', 'EPSG:4326')

const extentOfView = {
  width,
  height,
  west,
  south,
  east,
  north,
}
```
<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
