class App.Views.IdeaFilters extends Backbone.View

  el: 'body'

  events:
    'change .filters .categories': 'filter'
    'change .filters .statuses': 'filter'

  filter: (e) ->
    url = $(e.target).val()
    window.location = url unless url == 'nil'
