class App.Routers.Router extends Backbone.Router

  initialize: =>
    @autoLoadClass()

  autoLoadClass: =>
    new App.Views.DefaultHelpers
    new App.Views.IdeaFilters
    new App.Views.BehaveEditor if $('textarea.behave').length > 0

  routes:
    '': 'home'

  initHomePage: ->
    console.log "Welcome to Brilliance!"
