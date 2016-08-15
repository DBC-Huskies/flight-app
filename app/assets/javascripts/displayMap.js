function initMap() {
  var map;
  var $business_object;
  var biz_loc_collection;
  var i;

  $business_object = $('#businesses').data('url');
  biz_loc_collection = [];
  for (i = 0; i < $business_object.length; ++i) {
    biz_loc_collection.push({ lat: $business_object[i].latitude, lng: $business_object[i].longitude});
  }

  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: {lat: 47.6062, lng: -122.3321},
    // center: should be the lat and long of leading biz
    zoom: 12
  });

  biz_loc_collection.forEach(addMarker);

  function addMarker(business){
    var marker;
    marker = new google.maps.Marker({
      map: map,
      draggable: false,
      animation: google.maps.Animation.DROP,
      position: business
    });

    marker.addListener('click', toggleBounce);
  }

  function toggleBounce() {
    var marker;
    marker = this;

      if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
      } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
        setTimeout(function(){ marker.setAnimation(null); }, 750);
      }
   }

}
