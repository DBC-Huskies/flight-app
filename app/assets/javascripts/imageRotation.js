$(document).ready(function() {
  if ($('#homepage').length) {
    rotateBackground();
  }
});

var rotateBackground = function() {
  var imageCollection;
  var currentIndex;

  currentIndex = 0;
  imageCollection = [ 'beer', 'wine', 'coffee', 'wine1', 'distillery', 'beer1', 'wine2' ];

  setInterval( rotateBackgroundTheme, 10000);

  function rotateBackgroundTheme() {
    var image;
    var $body;

    $body = $('body.rotating');

    if ($body.length) {
      if (currentIndex === imageCollection.length - 1 ) {
        currentIndex = 0;
      } else {
        currentIndex++;
      }

      image = imageCollection[currentIndex];
      applyBackgroundTheme(image);
    }
  }
}



var applyBackgroundTheme = function( themeName ) {
  var $body = $('body');

  $body.removeClass( function(index, css) {
      return (css.match(/(^|\s)background-\S+/g) || []).join(' ');
    })
  $body.addClass('background-' + themeName);

}

var setBackgroundTheme = function (themeName) {
  var $body = $('body');

  $body.removeClass('rotating');
  applyBackgroundTheme(themeName);

}
