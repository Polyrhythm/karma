View = require 'views/base/view'
template = require 'views/templates/register'

module.exports = class RegisterView extends View
  autoRender: true
  template: template
