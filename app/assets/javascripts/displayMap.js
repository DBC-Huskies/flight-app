

function initMap() {
  var map;
  var business_object = $('#businesses').data('url');

  var myLatLng = {lat: business_object.latitude, lng: business_object.longitude};

  // var myLatLng = {lat: 47.5464394, lng: -122.3170827};
  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: {lat: 47.6062, lng: -122.3321},
    // center: should be the lat and long of leading biz
    zoom: 12
  });

  var marker = new google.maps.Marker({
          map: map,
          position: myLatLng,
        });
}


