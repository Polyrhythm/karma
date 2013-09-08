View = require 'views/base/view'
template = require 'views/templates/footer'

module.exports = class FooterView extends View
  autoRender: true
  className: 'footer'
  region: 'footer'
  template: template
