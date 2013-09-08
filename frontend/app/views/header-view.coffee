View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  autoRender: yes
  className: 'header section group'
  region: 'header'
  id: 'header'
  template: template

  events:
    'click .mobile-nav': 'mobileDropdown'
    'click .navigation': 'dropdown'

  dropdown: (e) ->
    e.preventDefault

    if $('.dropdown').hasClass 'active'
      $('.dropdown').removeClass 'active'
    else
      $('.dropdown').addClass 'active'

  mobileDropdown: (e) ->
    e.preventDefault
    
    if $('.mobile-dropdown').hasClass 'active'
      $('.mobile-dropdown').removeClass 'active'
    else
      $('.mobile-dropdown').addClass 'active'
