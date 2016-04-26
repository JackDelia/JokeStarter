var React = require('react'),
    UserClientActions = require('../../actions/UserClientActions'),
    LinkedStateMixin = require('react-addons-linked-state-mixin'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  mixins: [LinkedStateMixin],

  getInitialState: function(){
    return {username: "", password: ""};
  },

  handleSubmit: function(e){
    e.preventDefault();

    UserClientActions.createUser({
      username: this.state.username,
      password: this.state.password
    });

    hashHistory.push("/");

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

        <input type="submit" value="Sign Up!"/>
      </form>

    );
  }
});
