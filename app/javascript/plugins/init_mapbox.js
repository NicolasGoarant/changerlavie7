import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    console.log([ marker.longitude, marker.latitude ]);
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.longitude, marker.latitude ])
      .setPopup(new mapboxgl.Popup({ offset: 25, anchor: 'top' })
      .setHTML('<a target="_blank" href="'+ marker.properties.url + '"><b>' + marker.properties.title + '</b><br/><img class="mt-4 img-fluid" src='+ marker.properties.img + ' /><p>' + marker.properties.summary + '</p></a>'))
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.longitude, marker.latitude ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
