var UserClientActions = require("../../actions/UserClientActions"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    return({currentUser: UserStore.currentUser()});
  },
  componentDidMount: function(){
    UserStore.addListener(this.changed);
    UserClientActions.checkCurrentUser();
  },

  changed: function(){
    this.setState({currentUser: UserStore.currentUser()});
  },

  signOut: function(){
    UserClientActions.signOutUser();
  },

  signIn: function(){
    hashHistory.push("signin");
  },

  signUp: function(){
    hashHistory.push("signup");
  },

  render: function(){
    var buttons;
    if(this.state.currentUser)
      buttons = <button onClick={this.signOut}>Sign Out</button>;
    else
      buttons = (
        <div>
          <button onClick={this.signIn}>Sign In</button>
          <button onClick={this.signUp}>Sign Up</button>
        </div>
      );

    return buttons;
  }
});