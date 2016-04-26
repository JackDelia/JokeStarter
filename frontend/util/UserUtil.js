var UserServerActions = require("..action/UserServerActions");

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
  }
};
