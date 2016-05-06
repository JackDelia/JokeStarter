var UserUtil = require("../util/UserUtil"),
    UserStore = require("../stores/UserStore");


module.exports = {
  createUser: function(username, password, avatarUrl){
    var options = {username: username, password: password, avatar_url: avatarUrl};
    UserUtil.createUser(options);
  },

  loginUser: function(username, password){
    var options = {username: username, password: password};
    UserUtil.loginUser(options);
  },

  signOutUser: UserUtil.signOutUser,

  checkCurrentUser: UserUtil.checkCurrentUser,
  fetchUsers: UserUtil.fetchUsers,
  fetchSingleUser: UserUtil.fetchSingleUser,

  alterMoney: function(changeAmount){
    var user = UserStore.currentUser();
    var amount = user.money + (changeAmount*100);
    UserUtil.alterMoney(amount, user.id);
  }
};
