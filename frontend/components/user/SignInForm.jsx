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
      errors: []
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
      if(this.props.callback)
        this.props.callback();
      else
        hashHistory.goBack();
    }

    this.setState({errors: UserStore.getCurrentErrors()});
  },

  handleSubmit: function(e){
    e.preventDefault();

    UserClientActions.loginUser(this.state.username, this.state.password);

    this.setState({username: "", password: ""});
  },

  signUp: function(e){
    e.preventDefault();

    hashHistory.push("/signup");
  },

  guestSignIn: function(e){
    e.preventDefault();
    UserClientActions.loginUser("Guest", "gloriainexcelsiusdiscordia");
  },

  render: function(){
    var errors = UserStore.getCurrentErrors().map(function(error){
      return <p className="error">{error}</p>;
    });

    return (
      <div className="user-form-panel">
        {errors}
        <form className="user-form" onSubmit={this.handleSubmit}>

          <input type="text"
            placeholder="Username"
            className="sign-in-field"
            valueLink={this.linkState("username")}/><br/>

          <input type="password"
              className="sign-in-field"
              placeholder="Password"
              valueLink={this.linkState("password")}/><br/>

            <input type="submit" className="button" value="Sign In!"/>
        </form>

        <div className="link"
          onClick={this.signUp}>No account? Click here to sign up!
        </div><br/>
        <div className="link"
          onClick={this.guestSignIn}>Or click here to sign in as a guest!
        </div>
      </div>

    );
  }
});
