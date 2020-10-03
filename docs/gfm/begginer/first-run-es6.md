# First run on ES6 / Begginer / Openlayer Guid

This primer shows you how to put a simple map on a web page.

For production, we strongly recommend bundling the application together with its dependencies, as explained in the Building an OpenLayers Application tutorial.

Put a map on a page
Below you'll find a complete working example. 
[Open code in new tab](../../../examples/begginers/first-run-es6/)
or create a new file, copy in the contents below, and open in a browser:

#### index.html

```html
<!doctype html>
<html lang="en">
  <head>
    <style>
      .map {
        height: 400px;
        width: 100%;
      }
    </style>
    <title>OpenLayers ES6 example</title>
  </head>
  <body>
    <h2>My Map</h2>
    <div id="map" class="map"></div>
    <script type="text/javascript" src="main.js"></script>
  </body>
</html>
```

#### main.js

```js
import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import * as olProj from 'ol/proj';
import OSM from 'ol/source/OSM';

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({
    center: olProj.fromLonLat([37.41, 8.82]),
    zoom: 4
  })
});
```

#### package.json

```json
{
  "name": "first-run-es6",
  "dependencies": {
    "ol": "6.4.3"
  },
  "devDependencies": {
    "parcel": "1.11.0"
  },
  "scripts": {
    "start": "parcel index.html",
    "build": "parcel build --experimental-scope-hoisting --public-url . index.html"
  }
}
```
