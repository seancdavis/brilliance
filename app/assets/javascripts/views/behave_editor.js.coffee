class App.Views.BehaveEditor extends Backbone.View

  el: 'form'

  initialize: ->
    for editor in $('textarea.behave')
      editor = new Behave
        textarea: editor
        softTabs: true
        tabSize: 2
