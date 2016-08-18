$(document).ready(function(){
  adjustMapHeight();
})

function adjustMapHeight() {
  if ( $("#map-canvas").length  && $('#business-listings').length ) {
    var heights = $("#business-listings").map(function() {
      return $(this).height();
    }).get(),

    maxHeight = Math.max.apply(null, heights);
    $("#map-canvas").height(maxHeight);
  }
}
