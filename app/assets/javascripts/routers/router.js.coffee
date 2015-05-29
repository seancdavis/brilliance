class App.Routers.Router extends Backbone.Router

  initialize: =>
    @autoLoadClass()

  autoLoadClass: =>
    new App.Views.DefaultHelpers
    new App.Views.IdeaFilters

  routes:
    '': 'home'

  initHomePage: ->
    console.log "Welcome to Brilliance!"
