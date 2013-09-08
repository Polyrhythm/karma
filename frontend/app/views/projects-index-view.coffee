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

    $(window).resize(
      $('#map-canvas, .project-list').height($(window).height() - 106)
    )

    $ ->
      initialize = ->

        coords1 = new google.maps.LatLng(37.7756,-122.4193)
        coords2 = new google.maps.LatLng(37.774196, -122.443657)
        coords3 = new google.maps.LatLng(37.768226, -122.471809)
        coords4 = new google.maps.LatLng(37.798344, -122.411041)
        coords5 = new google.maps.LatLng(37.814077, -122.262039)

        $project1 = document.getElementById 'project1'
        $project2 = document.getElementById 'project2'
        $project3 = document.getElementById 'project3'
        $project4 = document.getElementById 'project4'

        mapOptions = {
          zoom: 12
          center: coords1
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }

        map = new google.maps.Map(
          document.getElementById('map-canvas'), mapOptions
        )

        economicMarker = 'images/economic.png'
        marker = new google.maps.Marker({
          position: coords1
          map: map
          title: 'Save the Bay'
          # icon: economicMarker
        })

        marker2 = new google.maps.Marker({
          position: coords2
          map: map
          title: 'Cat Care'
          # icon: economicMarker
        })

        marker3 = new google.maps.Marker {
          position: coords3
          map: map
          title: 'Soccer in the Park'
        }

        marker4 = new google.maps.Marker {
          position: coords4
          map: map
          title: 'Rolling Stones Animal Help'
        }

        marker5 = new google.maps.Marker {
          position: coords5
          map: map
          title: 'Art Murmur'
        }

        google.maps.event.addListener marker, 'click', ->
          document.window.location '/projects/1'
        
        google.maps.event.addListener map, 'center_changed', ->
          window.setTimeout ->
            map.panTo marker.getPosition()
          , 3000

      initialize()

  render: ->
    super


