# Overlay

Example how to simply use Overlay.

<!-- tabs:start -->

#### **Global OL**
```js
const element = document.createElement('div')
const overlay = new ol.Overlay({
  element,
  // stopEvent: false,
  // className: 'some-css-class',
  // autoPan: false
  // autoPanAnimation: false
})
overlay.setPosition(fromLonLat([37.41, 8.82])) // it's not necessary

// Here should be map definition
map.addOverlay(overlay) // Explanation how create map is below in "Related pages"
```

#### **ES6 modules**
```js
import Overlay from "ol/Overlay"
import { fromLonLat } from "ol/proj"

const element = document.createElement('div')
const overlay = new Overlay({
  element,
  // stopEvent: false,
  // className: 'some-css-class',
  // autoPan: false
  // autoPanAnimation: false
})
overlay.setPosition(fromLonLat([37.41, 8.82])) // it's not necessary

// Here should be map definition
map.addOverlay(overlay) // Explanation how create map is below in "Related pages"
```
<!-- tabs:end -->

#### Related pages:
* [How to create map](beginner/first-run.md)
