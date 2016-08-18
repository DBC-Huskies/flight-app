$(document).ready(function() {
  enterTheSite();
  submitCurateFlight();
  seeTheFlightMap();
});

var pushBrowserHistory = function(url, title, state) {
  console.log("pushBrowserHistory", url, title, state);
  history.pushState( state, title, url);
}

window.addEventListener("popstate", function(e) {
  console.log("popstate",e,window.historyInitiated,window.location.pathname);

  if (window.location.pathname === '/') {
    window.location.reload();
  } else {

    if (e.state.callback) {
      window[e.state.callback](false, e.state.data );
    } else {
      window.location.reload();
    }
  }
});


var loadSearchForm = function(pushState) {

    $.ajax({
      url: '/flights/search'+ '?partial=true',
      success: successCallback
    });

    function successCallback(response) {
      if(pushState){
         pushBrowserHistory( '/flights/search', 'Search SipTrip', { callback: 'loadSearchForm' } )
       }
      $('header').removeClass('hidden');
      $('main').html(response);
    }
}

var enterTheSite = function() {
  $('#homepage-box').on('click', 'button', function(e){
    e.preventDefault();
    loadSearchForm(true);
  });
}

var runSearchForm = function(pushState, formData) {
     $.ajax({
      url: '/flights/search_results'+ '?partial=true',
      method: 'POST',
      data: formData,
      success: successCallback,
      error: errorCallback
    });

    function successCallback(response) {
      $('main').html(response);
      if (pushState) {
        pushBrowserHistory( '/flights/search_results', 'SipTrip', {
          callback: 'runSearchForm',
          data: formData
        });
      }
      $(window).scrollTop($('#search-results-container').offset().top);
    }

    function errorCallback(response) {
      $('main').html(response.responseText);
    }

}

var submitCurateFlight = function() {
  $('main').on('click', '#new_search_form button', function(e){
    e.preventDefault();

    var formData = $('#new_search_form').serialize();
    runSearchForm(true, formData);
  });
}

var showFlightMap = function(pushState, flightUrl) {
  $.ajax({
      url: flightUrl + '?partial=true',
      success: successCallback
    });

    function successCallback(response) {
      $('#business-results-container').html(response);
      if (pushState) {
          pushBrowserHistory( flightUrl, 'SipTrip', {
            callback: 'showFlightMap',
            data: flightUrl
        });
      }
      adjustMapHeight();
      $(window).scrollTop($('#business-results-container').offset().top);
    }

}
var seeTheFlightMap = function() {
  $('main').on('click', '#search-results-box a', function(e){
    e.preventDefault();
    var flightUrl;

    flightUrl = $(this).attr('href');

    showFlightMap(true, flightUrl);

  });
}


