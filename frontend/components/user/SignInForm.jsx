var React = require('react'),
    UserClientActions = require('../../actions/UserClientActions'),
    LinkedStateMixin = require('react-addons-linked-state-mixin'),
    UserStore = require("../../stores/UserStore"),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  mixins: [LinkedStateMixin],

  getInitialState: function(){
    return {username: "", password: ""};
  },

  componentDidMount: function(){
    UserStore.addListener(this.changed);
    UserClientActions.checkCurrentUser();
  },

  changed: function(){
    if(UserStore.current_user)
      hashHistory.push("/");
  },

  handleSubmit: function(e){
    e.preventDefault();

    UserClientActions.loginUser({
      username: this.state.username,
      password: this.state.password
    });

    this.setState({username: "", password: ""});
  },

  render: function(){
    return (
      <form className="UserForm" onSubmit={this.handleSubmit}>

        <label>Username:
          <input type="text" valueLink={this.linkState("username")}/>
        </label><br/>

        <label>Password:
          <input type="password" valueLink={this.linkState("password")}/>
        </label><br/>

      <input type="submit" value="Sign In!"/>
      </form>

    );
  }
});
