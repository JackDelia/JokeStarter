var Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

module.exports = {
  receiveUser: function(user){
    Dispatcher.dispatch({
      actionType: UserConstants.RECEIVE_USER,
      user: user
    });
  },

  logoutUser: function(){
    Dispatcher.dispatch({
      actionType: UserConstants.LOGOUT_USER
    });
  }
};
