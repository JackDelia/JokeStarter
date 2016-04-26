var UserServerActions = require("../actions/UserServerActions");

module.exports = {
  createUser: function(options){
    $.ajax({
      method: "POST",
      url: "/users",
      dataType: "json",
      data: {user: options},
      success: UserServerActions.receiveUser,
      error: function(error){
        console.log(error);
      }
    });
  },

  loginUser: function(credentials){
    $.ajax({
      method: "POST",
      url: "/session",
      dataType: "json",
      data: {user: credentials},
      success: UserServerActions.receiveUser,
      error: function(error){
        console.log(error);
      }
    });
  },

  signOutUser: function(){
    $.ajax({
      method: "DELETE",
      url: "/session",
      dataType: "json",
      success: UserServerActions.logoutUser,
      error: function(error){
        console.log(error);
      }
    });
  },

  checkCurrentUser: function(){
    $.ajax({
      method: "GET",
      url: "/session",
      dataType: "json",
      success: UserServerActions.receiveUser,
      error: function(error){
        console.log(error);
      }
    });
  }
};
