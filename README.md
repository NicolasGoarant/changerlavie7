
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
