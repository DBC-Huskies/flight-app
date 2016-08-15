$( document ).ready(function() {
  var heights = $("#business-list").map(function() {
    return $(this).height();
  }).get(),

  maxHeight = Math.max.apply(null, heights);

  $("#map-canvas").height(maxHeight);

  function checkWidth() {
      var containerSize = $('.container').width();
      if (containerSize <= 720) {
          debugger;
          //if the container is smaller then 720 px
          //then change the width of the business list 
          $('#business-list').width(mapWidth);

      }
  }
    // Execute on load
  checkWidth();
    // add event listener
  $('.container').resize(checkWidth);

});

  