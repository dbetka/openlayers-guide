# First run

This primer shows you how to put a simple map on a web page.

For production, we strongly recommend bundling the application together with its dependencies, as explained in the Building an OpenLayers Application tutorial.

Put a map on a page
Below you'll find a complete working example. Create a new file, copy in the contents below, and open in a browser:

<!-- tabs:start -->

#### **Global OL**

```html
<!doctype html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.4.3/css/ol.css" type="text/css">
    <style>
      .map {
        height: 400px;
        width: 100%;
      }
    </style>
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.4.3/build/ol.js"></script>
    <title>OpenLayers example</title>
  </head>
  <body>
    <h2>My Map</h2>
    <div id="map" class="map"></div>
    <script type="text/javascript">
      var map = new ol.Map({
        target: 'map',
        layers: [
          new ol.layer.Tile({
            source: new ol.source.OSM()
          })
        ],
        view: new ol.View({
          center: ol.proj.fromLonLat([37.41, 8.82]),
          zoom: 4
        })
      });
    </script>
  </body>
</html>
```

#### **ES6 modules**

index.html
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

main.js
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

package.json
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

<!-- tabs:end -->

Understanding what is going on
To include a map a web page you will need 3 things:

Include OpenLayers
\<div> map container
JavaScript to create a simple map
Include OpenLayers

<!-- tabs:start -->
#### **Global OL**
```html
  <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.4.3/build/ol.js"></script>
```

#### **ES6 modules**
```js
import Map from 'ol/Map'
```
<!-- tabs:end -->

The first part is to include the JavaScript library. For the purpose of this tutorial, here we simply point to the openlayers.org website to get the whole library. In a production environment, we would build a custom version of the library including only the module needed for our application.

Optional: If the application is intended to run on old platforms like Internet Explorer or Android 4.x, another script needs to be included before OpenLayers:

```html
  <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList"></script>
```

\<div> to contain the map

```html
  <div id="map" class="map"></div>
```

The map in the application is contained in a \<div> HTML element. Through this \<div> the map properties like width, height and border can be controlled through CSS. Here's the CSS element used to make the map 400 pixels high and as wide as the browser window.

```html
  <style>
    .map {
      height: 400px;
      width: 100%;
    }
  </style>
```

JavaScript to create a simple map

<!-- tabs:start -->
#### **Global OL**
```js
  var map = new ol.Map({
    target: 'map',
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      })
    ],
    view: new ol.View({
      center: ol.proj.fromLonLat([37.41, 8.82]),
      zoom: 4
    })
  });
```

#### **ES6 modules**
```js
  var map = new Map({
    target: 'map',
    layers: [
      new TileLayer({
        source: new OSM()
      })
    ],
    view: new View({
      center: fromLonLat([37.41, 8.82]),
      zoom: 4
    })
  });
```
<!-- tabs:end -->

With this JavaScript code, a map object is creating with an OSM layer zoomed on the African East coast. Let's break this down:

The following line creates an OpenLayers Map object. Just by itself, this does nothing since there are no layers or interaction attached to it.

<!-- tabs:start -->
#### **Global OL**
```js
  var map = new ol.Map({ ... });
```

#### **ES6 modules**
```js
  var map = new Map({ ... });
```
<!-- tabs:end -->

To attach the map object to the \<div>, the map object takes a target into arguments. The value is the id of the \<div>:

```js
    target: 'map'
```

The layers: [ ... ] array is used to define the list of layers available in the map. The first and only layer right now is a tiled layer:

<!-- tabs:start -->
#### **Global OL**
```js
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      })
    ]
```

#### **ES6 modules**
```js
    layers: [
      new TileLayer({
        source: new OSM()
      })
    ]
```
<!-- tabs:end -->

Layers in OpenLayers are defined with a type (Image, Tile or Vector) which contains a source. The source is the protocol used to get the map tiles.

The next part of the Map object is the View. The view allows to specify the center, resolution, and rotation of the map. The simplest way to define a view is to define a center point, and a zoom level. Note that zoom level 0 is zoomed out.


<!-- tabs:start -->
#### **Global OL**
```js
    view: new ol.View({
      center: ol.proj.fromLonLat([37.41, 8.82]),
      zoom: 4
    })
```

#### **ES6 modules**
```js
    view: new View({
      center: fromLonLat([37.41, 8.82]),
      zoom: 4
    })
```
<!-- tabs:end -->

You will notice that the center specified is in lon/lat coordinates (EPSG:4326). Since the only layer we use is in Spherical Mercator projection (EPSG:3857), we can reproject them on the fly to be able to zoom the map on the right coordinates.

