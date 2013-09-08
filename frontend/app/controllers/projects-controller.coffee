Controller = require 'controllers/base/controller'
ProjectsIndexView = require 'views/projects-index-view'
ProjectView = require 'views/project-view'

module.exports = class ProjectsController extends Controller
  index: ->
    @view = new ProjectsIndexView region: 'main'
    @view.height()

  show: ->
    @view = new ProjectView region: 'main'
