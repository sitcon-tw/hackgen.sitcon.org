define ['jquery'], ($)->
  class Navigation
    constructor: (allPages, pages)->
      @menuItems = $("#main-menu a")
      @allPages = allPages
      @pages = pages
      @header = $("#header")
    bind: ->
      @menuItems.on 'click', @handleClick
    handleClick: (e) =>
      target = $(e.target).data('id')
      @allPages.removeClass('active')
      @header.removeClass('home')
      @pages[target].addClass('active')

      e.preventDefault()
