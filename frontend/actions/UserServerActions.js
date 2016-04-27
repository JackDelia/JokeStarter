var Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

module.exports = {
  receiveUser: function(user){
    Dispatcher.dispatch({
      actionType: UserConstants.RECEIVE_USER,
      user: user
    });
  },

  receiveAllUsers: function(users){
    Dispatcher.dispatch({
      actionType: UserConstants.RECEIVE_ALL_USERS,
      users: users
    });
  },

  logoutUser: function(){
    Dispatcher.dispatch({
      actionType: UserConstants.LOGOUT_USER
    });
  },

  receiveErrors: function(errors){
    Dispatcher.dispatch({
      actionType: UserConstants.RECEIVE_ERRORS,
      errors: errors.responseJSON.errors
    });
  }
};
