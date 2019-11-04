
<div id='map' style='width: 400px; height: 300px;'></div>
<div data-markers="<%= @markers.to_json %>"></div>
<script>

mapboxgl.accessToken = 'pk.eyJ1Ijoibmljb2xhc2dvYXJhbnQiLCJhIjoiY2syaHg4c2duMGFoNTNoazJ3bThwOWZxaCJ9.PY7j3KXjLbMqjoxkeUeRVg';
var map = new mapboxgl.Map({
container: 'map',
style: 'mapbox://styles/mapbox/streets-v11'
});
</script>

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css' rel='stylesheet' />
    <style>
      body {
        margin: 0;
        padding: 0;
      }

      #map {
        position: absolute;
        top: 0;
        bottom: 0;
        width: 100%;
      }
    </style>
</head>
<body>

<div id='map'></div>

<script>

mapboxgl.accessToken = 'pk.eyJ1Ijoibmljb2xhc2dvYXJhbnQiLCJhIjoiY2syaHg4c2duMGFoNTNoazJ3bThwOWZxaCJ9.PY7j3KXjLbMqjoxkeUeRVg';

var map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/light-v10',
  center: [10, 10],
  zoom: 3
});

<% @articles.each do |article|  %>
// code from the next step will go here!
var geojson = {
  type: 'FeatureCollection',
  features: [{
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [<%= article.longitude %>, <%= article.latitude %>]
    },
    properties: {
      title: 'Mapbox',
      description: 'Washington, D.C.'
    }
  },]
};

<% end %>

// add markers to map
geojson.features.forEach(function(marker) {

  // create a HTML element for each feature
  var el = document.createElement('div');
  el.className = 'marker';

  // make a marker for each feature and add to the map
  new mapboxgl.Marker(el)
    .setLngLat(marker.geometry.coordinates)
    .addTo(map);
});



</script>
