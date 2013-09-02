define [
  'jquery'
  'navigation'
], ($, Navigation) ->

  class App
    constructor: ->
      @allPages = $('#content .page')
      @pages = @getPages()
      @navigation = new Navigation(@allPages, @pages)

    getPages: ->
      pageHash = {}
      @allPages.each (k, v) ->
        pageHash[v.id] = $(v)

      pageHash

    start: ->
      @navigation.bind()
