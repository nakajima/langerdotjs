jQuery(function() {
  var pattern;
  pattern = /((http|ftp|https):\/\/)?[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?/;
  if (pattern.test(window.location.pathname)) {
    var url = pattern.exec(window.location.pathname)[0];
    if (url.indexOf('http') == 0) {
      window.location = url;
    } else {
      window.location = 'http://' + url;
    }
  }
});

