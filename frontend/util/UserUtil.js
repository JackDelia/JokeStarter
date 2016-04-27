var UserServerActions = require("../actions/UserServerActions");

module.exports = {
  createUser: function(options){
    $.ajax({
      method: "POST",
      url: "/users",
      dataType: "json",
      data: {user: options},
      success: UserServerActions.receiveUser,
      error: UserServerActions.receiveErrors
    });
  },

  loginUser: function(credentials){
    $.ajax({
      method: "POST",
      url: "/session",
      dataType: "json",
      data: {user: credentials},
      success: UserServerActions.receiveUser,
      error: UserServerActions.receiveErrors
    });
  },

  signOutUser: function(){
    $.ajax({
      method: "DELETE",
      url: "/session",
      dataType: "json",
      success: UserServerActions.logoutUser,
      error: UserServerActions.receiveErrors
    });
  },

  fetchUsers: function(){
    $.ajax({
      method: "GET",
      url: "/users",
      dataType: "json",
      success: UserServerActions.receiveAllUsers
    });
  },

  checkCurrentUser: function(){
    $.ajax({
      method: "GET",
      url: "/session",
      dataType: "json",
      success: UserServerActions.receiveUser
    });
  }
};
