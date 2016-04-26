var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

var UserStore = new Store(Dispatcher);

var _user = null,
    _errors = [];

UserStore.currentUser = function(){
  return _user;
};

UserStore.__onDispatch = function(payload){
  _errors = [];
  switch (payload.actionType) {
    case UserConstants.RECEIVE_USER:
      _user = payload.user;
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
  }
};

module.exports = UserStore;
