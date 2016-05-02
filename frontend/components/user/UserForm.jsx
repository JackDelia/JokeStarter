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

    if(UserStore.currentUser())
      this.props.callback();

    this.setState({errors: UserStore.getCurrentErrors()});
  },

  handleSubmit: function(e){
    e.preventDefault();

    this.setState({username: "", password: ""});

    UserClientActions.createUser(this.state.username, this.state.password);


    this.setState({username: "", password: ""});
  },

  render: function(){

    var errors = UserStore.getCurrentErrors().map(function(error){
      return <p className="error">{error}</p>;
    });

    if(this.props.callback){
      var closeButton = <button className="btn btn-default" onClick={this.props.callback}>Close</button>;
    }

    return (
      <div className="user-form-panel">
        {errors}
        <form className="user-form" onSubmit={this.handleSubmit}>

          <input type="text"
            placeholder="Username"
            className="sign-in-field"
            valueLink={this.linkState("username")}/><br/>

          <input type="password"
            placeholder="Password"
            className="sign-in-field"
            valueLink={this.linkState("password")}/><br/>

          <input type="submit" className="btn btn-success" value="Sign Up!"/>
        </form>
        {closeButton}
      </div>

    );
  }
});
