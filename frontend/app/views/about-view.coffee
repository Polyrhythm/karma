View = require 'views/base/view'
template = require 'views/templates/about'

module.exports = class AboutView extends View
  autoRender: true
  template: template

  render: ->
    super
