View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  autoRender: yes
  className: 'header group'
  region: 'header'
  id: 'header'
  template: template
