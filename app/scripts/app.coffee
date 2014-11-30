'use strict'

###*
 # @ngdoc overview
 # @name testappApp
 # @description
 # # testappApp
 #
 # Main module of the application.
###


class App extends App
  constructor: ->
    return [
      'ngAnimate',
      'ngCookies',
      'ngResource',
      'ngRoute',
      'ngSanitize',
      'ngTouch'
    ]


class Routes extends Config
  constructor: ($routeProvider) ->
    $routeProvider
    .when '/',
      controller: 'MainCtrl'
      templateUrl: 'views/main.html'
    .when '/about',
      controller: 'AboutCtrl'
      templateUrl: 'views/about.html'
    .otherwise
      redirectTo: '/'
