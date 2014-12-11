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
      'restangular',
      'ngSails'
    ]


class Routes extends Config
  constructor: ($stateProvider, $urlRouterProvider, RestangularProvider) ->
    # For any unmatched url, redirect to /state1
    $urlRouterProvider.otherwise "/#/" 
    #
    #
    #  DO NOT FORGET ABOUT COMMA AFTER STATE NAME !!!!!!!!!!!!!!!
    #
    #
    $stateProvider 
      .state 'index',
        url: '/'
        controller: 'mainController'
        templateUrl: 'views/main.html'

      .state 'users',
        url: '/users'
        controller: 'restdemoController'
        templateUrl: 'views/users.html'

      .state 'about',
        url: '/about'
        controller: 'aboutController'
        templateUrl: 'views/about.html'

      .state 'dialog',
        url: '/diolog'
        controller: 'dialogsController'
        templateUrl: 'views/dialogs.html'




# global configuration for Restangular

class RestangularConfiguration extends Config
  constructor: (RestangularProvider)->
    RestangularProvider.setBaseUrl "http://0.0.0.0:1337/"
# #     RestangularProvider.setExtraFields ["name"]
#     RestangularProvider.setResponseExtractor (response, operation) ->
#       response.data

#     RestangularProvider.addElementTransformer "accounts", false, (element) ->
#       element.accountName = "Changed"
#       element

#     RestangularProvider.setDefaultHttpFields cache: true
#     RestangularProvider.setMethodOverriders [
#       "put"
#       "patch"
#     ]
    
#     # In this case we are mapping the id of each element to the _id field.
#     # We also change the Restangular route.
#     # The default value for parentResource remains the same.
#     RestangularProvider.setRestangularFields
#       id: "_id"
#       route: "restangularRoute"
#       selfLink: "self.href"

#     RestangularProvider.setRequestSuffix ".json"
    
#     # Use Request interceptor
#     RestangularProvider.setRequestInterceptor (element, operation, route, url) ->
#       delete element.name

#       element

    
#     # ..or use the full request interceptor, setRequestInterceptor's more powerful brother!
#     RestangularProvider.setFullRequestInterceptor (element, operation, route, url, headers, params, httpConfig) ->
#       delete element.name

#       element: element
#       params: _.extend(params,
#         single: true
#       )
#       headers: headers
#       httpConfig: httpConfig

#     return


class SailsConfig extends Config 
  constructor: ($sailsProvider)->
    $sailsProvider.url = 'http://0.0.0.0:1337/'