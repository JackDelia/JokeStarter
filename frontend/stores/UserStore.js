var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

var UserStore = new Store(Dispatcher);

var _user = null,
    _allUsers = {},
    _errors = [];

function addUsers(users){
  for (var i = 0; i < users.length; i++) {
    _allUsers[users[i].id] = users[i];
  }
  UserStore.__emitChange();
}

function addOneUser(user) {
  _allUsers[user.id] = user;
  if(_user && user.id === _user.id)
    _user = user;
  UserStore.__emitChange();
}

function addFollow(follow) {
  _user.follows.push(follow);
  UserStore.__emitChange;
}

function removeFollow(followId) {
  for (var i = 0; i < _user.follows.length; i++) {
    if(_user.follows[i].id == followId)
      _user.follows.splice(i,1);
  }
  UserStore.__emitChange();
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
    case "RECEIVE_FOLLOW":
      addFollow(payload.follow);
      break;
    case "LOSE_FOLLOW":
      removeFollow(payload.follow);
      break;
  }
};

module.exports = UserStore;
