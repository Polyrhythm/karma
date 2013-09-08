View = require 'views/base/view'
template = require 'views/templates/about'

module.exports = class AboutView extends View
  autoRender: true
  template: template

  render: ->
    super

    setInterval ->
      $('.about-tag').hide()
      setTimeout ->
        $('.about-tag').show()
      , 250
    , 500
