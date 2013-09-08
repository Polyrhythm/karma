Controller = require 'controllers/base/controller'
OrgIndexView = require 'views/org-index-view'

module.exports = class OrgsController extends Controller
  index: ->
    @view = new OrgIndexView region: 'main'
