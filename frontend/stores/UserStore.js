var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

var UserStore = new Store(Dispatcher);

var _user = null;

UserStore.__onDispatch = function(payload){
  switch (payload.actionType) {
    case UserConstants.RECEIVE_USER:
      _user = payload.user;
      UserStore.__emitChange();
  }
};
