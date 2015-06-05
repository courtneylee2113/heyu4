$(function() {
  map = new GMaps({
    div: '#map',
    latitude: 43.642604,
    longitude: -79.387117
  });

  map.addMarker({
    latitude: 43.642604,
    longitude: -79.387117,
    title: 'Lima',
    infoWindow: {
      content: '<p>An awesome marker</p>'
    }
  });

 GMaps.on('click', map.map, function(event) { console.log(event) })

})

