$(document).ready(function() {
  enterTheSite();
});

var enterTheSite =function() {
  $('#homepage-box').on('click', 'button', function(e){
    e.preventDefault();

    $.ajax({
      url: 'flights/search',
      success: successCallback
    });

    function successCallback(response) {
      $('header').removeClass('hidden');
      $('main').html(response);
    }
  });
}
