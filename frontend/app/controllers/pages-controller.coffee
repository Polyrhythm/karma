Controller = require 'controllers/base/controller'
AboutView = require 'views/about-view'
LandingView = require 'views/landing-view'
LoginView = require 'views/login-view'
RegisterView = require 'views/register-view'

module.exports = class PagesController extends Controller
  index: ->
    @view = new LandingView region: 'main'

  about: ->
    @view = new AboutView region: 'main'

  login: ->
    @view = new LoginView region: 'main'

  register: ->
    @view = new RegisterView region: 'main'
