$( document ).ready(function() {
  var heights = $("#business-listings").map(function() {
    return $(this).height();
  }).get(),

  maxHeight = Math.max.apply(null, heights);

  $("#map-canvas").height(maxHeight);

});


