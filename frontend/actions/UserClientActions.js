var UserUtil = require("../util/UserUtil");


module.exports = {
  createUser: UserUtil.createUser,
  loginUser: UserUtil.loginUser,
  signOutUser: UserUtil.signOutUser,
  checkCurrentUser: UserUtil.checkCurrentUser,
  fetchUsers: UserUtil.fetchUsers,
  fetchSingleUser: UserUtil.fetchSingleUser,
  alterMoney: UserUtil.alterMoney,
};
