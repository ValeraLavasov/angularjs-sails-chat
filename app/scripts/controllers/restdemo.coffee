class Restdemo extends Controller
  constructor: ($scope, Restangular)->
    # GET: /users/
    Restangular.all('users').getList()
      .then (users)->
        $scope.users = users