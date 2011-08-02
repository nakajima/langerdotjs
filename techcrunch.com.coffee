jQuery ->
  for num in [1..10]
    do (num) ->
      img = jQuery('<img>')
      img.attr('src', 'http://cl.ly/3n1Y0T3S1A0h3F0t4432/jared_bald_fixed.png')
      img.css ({ position: 'fixed', bottom: '0px', left: Math.floor(Math.random() * 1200), zIndex: Math.floor(Math.random() * 10) + 10000})
      jQuery('body').append(img)
      moveDown = () -> img.animate({ bottom: '0px'}, Math.floor(Math.random() * 400) + 100, moveUp)
      moveUp = () -> img.animate({ bottom: '-10px'}, Math.floor(Math.random() * 400) + 100, moveDown)
      moveUp(img)
