jQuery ($) ->
  return if document.location.pathname.split('/').length != 3
  return if !document.location.pathname.split('/')[2].match(/\.r$/)
  img = document.createElement('img')
  img.src = "http://groupmunchies.heroku.com/hongry?title=#{encodeURI($(document).attr('title'))}"
