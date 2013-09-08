View = require 'views/base/view'
template = require 'views/templates/org-index'

module.exports = class OrgIndexView extends View
  autoRender: true
  template: template

