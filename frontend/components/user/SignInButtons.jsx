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
      buttons = (<nav className="navbar navbar-default navbar-fixed-top">
        <a href={"#/users/"+this.state.currentUser.id} className="right-nav">
          Signed in as {this.state.currentUser.username}
        </a>

          <button className="btn btn-default navbar-btn right-nav"
            onClick={this.signOut}>Sign Out</button>
          <SearchBar/>
      </nav>);
    else
      buttons = (
        <nav className="navbar navbar-default navbar-fixed-top">
          <button className="btn btn-default navbar-btn right-nav"
            onClick={this.signIn}>Sign In</button>

          <button className="btn btn-default navbar-btn right-nav"
            onClick={this.signUp}>Sign Up</button>
          <SearchBar/>
        </nav>
      );

    return (
      <div id="header">

        {buttons}

        <Modal className="modal-signin" isOpen={this.state.signInOpen}>
          <SignInForm callback={this.closeModals}/>
        </Modal>

        <Modal className="modal-signin" isOpen={this.state.signUpOpen}>
          <UserForm callback={this.closeModals}/>
        </Modal>
      </div>);
  }
});
