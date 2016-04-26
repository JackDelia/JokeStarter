var Dispatcher = require("../dispatcher/Dispatcher"),
    UserConstants = require("../constants/UserConstants");

module.exports = {
  receiveUser: function(user){
    Dispatcher.dispatch({
      actionType: UserConstants.RECEIVE_USER,
      user: user
    });
  }
};
