View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  autoRender: yes
  className: 'header section group'
  region: 'header'
  id: 'header'
  template: template

  initialize: ->
    super
    $('.search-bar > input').autocomplete {
      appendTo: '.search-bar'
    }

  events:
    'click .mobile-nav': 'mobileDropdown'
    'click .navigation': 'dropdown'

  dropdown: (e) ->
    e.stopPropagation()

    if $('.dropdown').hasClass 'active-dropdown'
      $('.dropdown').removeClass 'active-dropdown'
    else
      $('.dropdown').addClass 'active-dropdown'

  mobileDropdown: (e) ->
    e.stopPropagation()
    
    if $('.mobile-dropdown').hasClass 'active-dropdown'
      $('.mobile-dropdown').removeClass 'active-dropdown'
    else
      $('.mobile-dropdown').addClass 'active-dropdown'

  render: ->
    super

    $('html').click ->
      $('.active-dropdown').removeClass 'active-dropdown'
