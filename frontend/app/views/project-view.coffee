View = require 'views/base/view'
template = require 'views/templates/project'

module.exports = class ProjectView extends View
  autoRender: true
  template: template
