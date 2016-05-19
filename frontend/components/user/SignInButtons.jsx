var UserClientActions = require("../../actions/UserClientActions"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    Modal = require('react-modal'),
    SignInForm = require('./SignInForm'),
    SearchBar = require('../project/SearchBar'),
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
    this.setState({signInOpen: true, signUpOpen: false});
  },

  signUp: function(){
    this.setState({signUpOpen: true, signInOpen: false});
  },

  closeModals: function(){
    this.setState({signInOpen: false, signUpOpen: false});
  },

  createNew: function(){
    if(UserStore.currentUser())
      hashHistory.push("newproject");
    else
      hashHistory.push("signin");
  },

  goToUser: function(){
    hashHistory.push("/users/"+ this.state.currentUser.id);
  },

  clickLogo: function() {
    hashHistory.push("/");
  },

  render: function(){
    var buttons;
    if(this.state.currentUser)
      buttons = (<nav className="navbar navbar-default navbar-fixed-top">
        <a href={"#/users/"+this.state.currentUser.id} className="right-nav">
          {this.state.currentUser.username}
        </a>

          <button className="btn btn-default navbar-btn right-nav"
            onClick={this.signOut}>Sign Out</button>
            <button className="btn btn-success"
              id="new-project-button"
              onClick={this.createNew}>
              Create New Project
            </button>
          <SearchBar/>
          <img onClick={this.clickLogo} id="navbar-logo" src="/assets/header-logo.png"/>
      </nav>);
    else
      buttons = (
        <nav className="navbar navbar-default navbar-fixed-top">
          <button className="btn btn-default navbar-btn right-nav"
            disabled={this.state.signInOpen}
            onClick={this.signIn}>Sign In</button>

          <button className="btn btn-default navbar-btn right-nav"
            disabled={this.state.signUpOpen}
            onClick={this.signUp}>Sign Up</button>
          <SearchBar/>
        <img onClick={this.clickLogo} id="navbar-logo" src="/assets/header-logo.png"/>
        </nav>
      );

    return (
      <div id="header">

        {buttons}

        <Modal className="modal-signin" isOpen={this.state.signInOpen}>
          <SignInForm callback={this.closeModals} signUpCallback={this.signUp}/>
        </Modal>

        <Modal className="modal-signin" isOpen={this.state.signUpOpen}>
          <UserForm callback={this.closeModals}/>
        </Modal>
      </div>);
  }
});
