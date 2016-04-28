var UserClientActions = require("../../actions/UserClientActions"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var user = UserStore.find(this.props.params.userId);
    return({user: user, editFormOpen: false, addMoneyFormOpen: false});
  },

  componentDidMount: function(){
    this.listener = UserStore.addListener(this.changed);
    UserClientActions.fetchSingleUser(this.props.params.userId);
  },

  componentWillUnmount: function(){
    this.listener.remove();
  },

  changed: function(){
    this.setState({user: UserStore.find(this.props.params.userId)});
  },

  clickProject: function(id){
    hashHistory.push("/projects/"+id);
  },

  render: function(){
    var user = this.state.user;
    if(!user)
      return <div/>;

    if(user.projects === undefined)
      user.projects = [];

    var userEditButton = "";
    var moneyElement = "";
    var addMoneyButton = "";
    if(user.id === UserStore.currentUser().id){
      addMoneyButton = (
        <div className="link">Click Here To Add Money To Your Account</div>
      );

      userEditButton = (
        <div className="link">Click Here To Edit Account</div>
      );

      var moneyString = user.money;
      if(moneyString%100 === 0)
        moneyString = moneyString/100 + ".00";
      else if (moneyString%10 === 0)
        moneyString = moneyString/100 + "0";
      else
        moneyString = moneyString/100;

      moneyElement = <div>Money: ${moneyString}</div>;
    }
    var projectElements = user.projects.map(function(project){
      return (
        <li className="project-list-item"
        key={project.id}
        onClick={this.clickProject.bind(this, project.id)}>

        <img className="thumbnail"
          src={project.thumbnail_image_url}/>

        {project.title}</li>);
    }.bind(this));

    return (
      <div className="user-detail-container">
        <h1>Profile For {user.username}</h1>
        <h2>Projects</h2>
        <ul className="project-index-container">
          {projectElements}
        </ul><br/>

        {moneyElement}
        {addMoneyButton}
        {userEditButton}
      </div>
    );
  }

});