var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

var UserStore = new Store(Dispatcher);

var _user = null,
    _allUsers = {},
    _errors = [];

function addUsers(users){
  for (var i = 0; i < users.length; i++) {
    if(!_user.id === users[i].id)
      _allUsers[users[i].id] = users[i];
  }
  UserStore.__emitChange();
}

function addOneUser(user) {
  _allUsers[user.id] = user;
}

UserStore.currentUser = function(){
  return _user;
};

UserStore.find = function(id){
  return _allUsers[id];
};

UserStore.allUsers = function(){
  return _allUsers;
};

UserStore.getCurrentErrors = function(){
  return _errors;
};

UserStore.__onDispatch = function(payload){
  _errors = [];
  switch (payload.actionType) {
    case UserConstants.RECEIVE_USER:
      _user = payload.user;
      _allUsers[payload.user.id] = payload.user;
      UserStore.__emitChange();
      break;
    case UserConstants.LOGOUT_USER:
      _user = null;
      UserStore.__emitChange();
      break;
    case UserConstants.RECEIVE_ERRORS:
      _errors.push(payload.errors);
      UserStore.__emitChange();
      break;
    case UserConstants.RECEIVE_ALL_USERS:
      addUsers(payload.users);
      break;
    case UserConstants.RECEIVE_ONE_USER:
      addOneUser(payload.user);
      break;
  }
};

module.exports = UserStore;
