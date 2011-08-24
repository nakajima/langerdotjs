jQuery(function() {
  var pattern;
  pattern = /([-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4})+\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)+/;
  if (pattern.test(window.location.pathname)) {
    var url = pattern.exec(window.location.pathname)[0];
    if (url.indexOf('http') == 0) {
      window.location = url;
    } else {
      window.location = 'http://' + url;
    }
  }
});

