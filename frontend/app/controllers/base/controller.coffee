Chaplin = require 'chaplin'
FooterView = require 'views/footer-view'
SiteView = require 'views/site-view'
HeaderView = require 'views/header-view'

module.exports = class Controller extends Chaplin.Controller
  beforeAction: ->
    @compose 'site', SiteView
    @compose 'header', HeaderView
    @compose 'footer', FooterView
