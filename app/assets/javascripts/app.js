$(document).ready(function() {
  enterTheSite();
  submitCurateFlight();
});

var enterTheSite = function() {
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

var submitCurateFlight = function() {
  $('main').on('click', '#new_search_form button', function(e){
    e.preventDefault();

    $.ajax({
      url: 'flights/search_results',
      method: 'POST',
      data: $('#new_search_form').serialize(),
      success: successCallback,
      error: errorCallback
    });

    function successCallback(response) {
      // $('#search').css({'float': 'none', 'margin-bottom': '25%'})
      $('#search-results-container').html(response);
      // $('#flights-list').css({'margin-bottom': '25%', 'margin-top': '25%'});
      $(window).scrollTop($('#search-results-section').offset().top);
    }

    function errorCallback(response) {
      // Need to write the code in order to display the error message on the search form
      debugger;
    }
  });
}
