View = require 'views/base/view'
template = require 'views/templates/login'

module.exports = class LoginView extends View
  autoRender: true
  template: template
