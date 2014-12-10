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
      'ui.router',
      'ngSanitize',
      'ngTouch',
      'restangular'
    ]


class Routes extends Config
  constructor: ($stateProvider, $urlRouterProvider) ->
    # For any unmatched url, redirect to /state1
    $urlRouterProvider.otherwise "/#/" 
    
    $stateProvider 
      .state 'index',
        url: '/'
        controller: 'mainController'
        templateUrl: 'views/main.html'
      .state 'about',
        url: '/about'
        controller: 'aboutController'
        templateUrl: 'views/about.html'