$(document).ready(function() {
  toggleHeaderFooter();
  enterTheSite();
  submitCurateFlight();
  seeTheFlightMap();
});

var toggleHeaderFooter = function() {
  if (window.location.pathname === '/') {
    $('header').hide();
    $('footer').hide();
  } else {
    $('main').show();
    $('header').show();
    $('footer').show();
  }
}

var pushBrowserHistory = function(url, title, state) {
  history.pushState( state, title, url);
}

window.addEventListener("popstate", function(e) {

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
      $('main').html(response);
    }
}

var enterTheSite = function() {
  $('#homepage-box').on('click', 'button', function(e){
    e.preventDefault();
    $('main').animate({
      opacity: "toggle"
    }, 500, function(){
      loadSearchForm(true);
      $('main').animate({
        opacity: 'toggle'
      }, 500);
      $('header').animate({
        opacity: 'toggle'
      }, 500);
      $('footer').animate({
        opacity: 'toggle'
      }, 500);
    });
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
      var theme;
      var formValues;

      $('main').html(response);
      if (pushState) {
        pushBrowserHistory( '/flights/search_results', 'SipTrip', {
          callback: 'runSearchForm',
          data: formData
        });
      }

      $(window).scrollTop($('#search-results-container').offset().top);

      formValues = deparam(formData);
      theme = formValues["search_form[beverage]"].toLowerCase();
      setBackgroundTheme(theme);

    }

    function errorCallback(response) {
      $('main').html(response.responseText);
    }

    function deparam(query) {
    var pairs, i, keyValuePair, key, value, map = {};

    if (query.slice(0, 1) === '?') {
        query = query.slice(1);
    }
    if (query !== '') {
        pairs = query.split('&');
        for (i = 0; i < pairs.length; i += 1) {
            keyValuePair = pairs[i].split('=');
            key = decodeURIComponent(keyValuePair[0]);
            value = (keyValuePair.length > 1) ? decodeURIComponent(keyValuePair[1]) : undefined;
            map[key] = value;
        }
    }
    return map;
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


