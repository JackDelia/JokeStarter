var React = require('react'),
    UserClientActions = require('../../actions/UserClientActions'),
    LinkedStateMixin = require('react-addons-linked-state-mixin'),
    UserStore = require("../../stores/UserStore"),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  mixins: [LinkedStateMixin],

  getInitialState: function(){
    return {
      username: "",
      password: "",
      errors: UserStore.getCurrentErrors()
      };
  },

  componentDidMount: function(){
    this.listener = UserStore.addListener(this.changed);
    UserClientActions.checkCurrentUser();
  },

  componentWillUnmount: function(){
    this.listener.remove();
  },

  changed: function(){

    if(UserStore.currentUser()){
      hashHistory.push("/");
    }

    this.setState({errors: UserStore.getCurrentErrors()});
  },

  handleSubmit: function(e){
    e.preventDefault();

    this.setState({username: "", password: ""});

    UserClientActions.createUser({
      username: this.state.username,
      password: this.state.password
    });


    this.setState({username: "", password: ""});
  },

  render: function(){

    var errors = UserStore.getCurrentErrors().map(function(error){
      return <p className="error">{error}</p>;
    });

    return (
      <div className="user-form-panel">
        {errors}
        <form className="user-form" onSubmit={this.handleSubmit}>

          <label>Username:
            <input type="text" valueLink={this.linkState("username")}/>
          </label><br/>

          <label>Password:
            <input type="password" valueLink={this.linkState("password")}/>
          </label><br/>

          <input type="submit" value="Sign Up!"/>
        </form>
      </div>

    );
  }
});
