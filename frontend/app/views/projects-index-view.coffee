View = require 'views/base/view'
template = require 'views/templates/projects-index'

module.exports = class ProjectsIndexView extends View
  autoRender: true
  className: 'projects-container section'
  template: template

  mapActive: true

  initialize: ->
    super
    @height()

  events:
    'click .list-map': 'changeFocus'

  changeFocus: (e) ->
    e.preventDefault()
    console.log 'yep'
    $('.inactive').removeClass 'inactive'

    if @mapActive is true
      @mapActive = false
      $('.projects-map-container').addClass 'inactive'
      $('.list-map').html 'List'
    else
      @mapActive = true
      $('.projects-list-container').addClass 'inactive'
      $('.list-map').html 'Map'


  height: ->
    $('#map-canvas, .project-list').height $(window).height() - 66

    $(window).resize $('#map-canvas, .project-list').height($(window).height() - 106)

    $ ->
      initialize = ->
        myLatlng = new google.maps.LatLng(37.7756,-122.4193)
        mapOptions = {
          zoom: 12
          center: myLatlng
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }

        map = new google.maps.Map(
          document.getElementById('map-canvas'), mapOptions
        )

        economicMarker = 'images/economic.png'
        marker = new google.maps.Marker({
          position: myLatlng
          map: map
          title: 'Hello World!'
          # icon: economicMarker
        })

        myLatlngtwo = new google.maps.LatLng(37.7656,-122.4093)
        marker2 = new google.maps.Marker({
          position: myLatlngtwo
          map: map
          title: 'Hello World!'
          icon: economicMarker
        })
   
      initialize()

  render: ->
    super


