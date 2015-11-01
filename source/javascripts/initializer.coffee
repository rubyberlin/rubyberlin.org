$ ->

  # Responsive images
  $('img.resp').responsiveImages()

  # ----------------------------------------------------------------------------
  # development
  if /\?dev/.test window.location.search
    $size = $('<div />').appendTo('body')
    $size.css
      position: 'fixed'
      background: 'rgba(0,0,0,0.9)'
      bottom: 0
      right: 0
      padding: '0.25em'
      color: 'white'

    $(window)
      .on('resize', -> $size.text $(window).width())
      .trigger('resize')

    $('a:not(.theme-toggle)').on 'click', ->
      href = $(@).attr 'href'
      if href == '/' || /\.html?/.test(href)
        window.location = "#{href}?dev"
      else if /^#/.test(href)
        window.location.hash = href
      else if !/^http/.test(href)
        window.location = "#{href}.html?dev"
      false
