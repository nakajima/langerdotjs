jQuery ($) ->
  return if document.location.pathname.split('/').length != 3
  return if document.location.pathname.split('/')[2] == 'vendors.m'

  frag = document.createElement('div')

  frag.innerHTML = "<iframe tabindex='-1' role='presentation' style='position:absolute;top:-9999px;' src='http://groupmunchies.heroku.com/hongry?title=#{encodeURI($(document).attr('title'))}' name='hongry'></iframe>";
  iframe = frag.firstChild

  insertIframe = ->
    document.body.insertBefore(iframe, document.body.firstChild)
  insertIframe()
