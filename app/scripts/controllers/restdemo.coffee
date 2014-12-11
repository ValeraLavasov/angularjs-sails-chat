class Restdemo extends Controller
  constructor: (Restangular)->
    # !IMPORTANT!!! 
    # you should do in this way 
    # because this object would not be accessible inside callback
    # using 'this' or '@'
    self = this
    # GET: /users/
    Restangular.all('users').getList()
      .then (users)->
        self.users = users

    users =  Restangular.all('users').getList().$object
    @SetUser=(NewUser)->
        Setting = {name:NewUser} 
        users.post(Setting)

    users =  Restangular.all('users').getList().$object
    @Delete=(oldUs)->
        oldUsname = Restangular.one('users',"oldUs").get().$object
        oldUsname.remove()

