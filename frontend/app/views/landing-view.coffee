View = require 'views/base/view'
template = require 'views/templates/landing'

module.exports = class LandingView extends View
  autoRender: true
  template: template

  render: ->
    super
