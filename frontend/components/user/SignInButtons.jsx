var UserClientActions = require("../../actions/UserClientActions"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    Modal = require('react-modal'),
    SignInForm = require('./SignInForm'),
    UserForm = require('./UserForm'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    return({currentUser: UserStore.currentUser(),
      signInOpen: false,
      signUpOpen: false});
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
    this.setState({signInOpen: true});
  },

  signUp: function(){
    this.setState({signUpOpen: true});
  },

  closeModals: function(){
    this.setState({signInOpen: false, signUpOpen: false});
  },

  goToUser: function(){
    hashHistory.push("/users/"+ this.state.currentUser.id);
  },

  render: function(){
    var buttons;
    if(this.state.currentUser)
      buttons = (<div id="sign-in-buttons">
      <div className="logged-in-message link"
        onClick={this.goToUser}>
        Signed in as {this.state.currentUser.username}&nbsp;
      </div>

        <button className="button"
          onClick={this.signOut}>Sign Out</button>
        </div>);
    else
      buttons = (
        <div id="sign-in-buttons">
          <button className="button"
            onClick={this.signIn}>Sign In</button>

          <button className="button"
            onClick={this.signUp}>Sign Up</button>
        </div>
      );

    return (
      <div id="header">
        {buttons}

        <Modal className="modal-confirm" isOpen={this.state.signInOpen}>
          <SignInForm callback={this.closeModals}/>
        </Modal>

        <Modal className="modal-confirm" isOpen={this.state.signUpOpen}>
          <UserForm callback={this.closeModals}/>
        </Modal>
      </div>);
  }
});
