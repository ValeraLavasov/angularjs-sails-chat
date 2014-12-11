class Dialogs extends Controller
  constructor: (Restangular,UserController,$stateParams)->
    self = this

User1 = User.CurrentUser

Restangular.all('dialogs').getList()
      .then (dialogs)->
        self.dialogs = dialogs

dialogs =  Restangular.all('dialogs').getList()
    @NewDialog =(User1,User2,DialogName)->
        dialogs.post({name:DialogName,user1_id:User1,user2_id:User2})



///
as  users  i  need to  creatе  dialogs with ids . 
витягнути юзерів при створенні діалогу
пропистаи створення  діалогу
dialog name!
вибір діалогу - вказувати всіх юзерів  з Макса.
Макс - CurrentUser
///