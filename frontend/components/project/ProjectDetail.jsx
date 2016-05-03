var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project, timeRemaining: 100000});
  },

  componentDidMount: function(){
    this.projectListener = ProjectStore.addListener(this.changed);
    ProjectClientActions.fetchSingleProject(this.props.params.projectId);
    this.countdown = setInterval(function(){
      this.setState({timeRemaining: this.state.timeRemaining-1});
    }.bind(this), 1000);
  },

  componentWillUnmount: function(){
    this.projectListener.remove();
    clearInterval(this.countdown);
  },

  componentWillReceiveProps: function(newProps){
    var project = ProjectStore.find(newProps.params.projectId);
    this.setState({project: project},
    ProjectClientActions.fetchSingleProject.bind(null, newProps.params.projectId));
  },

  changed: function(){
    this.setState({project: ProjectStore.find(this.props.params.projectId)});
    var timeRemaining = 259200 + this.state.project.age;
    this.setState({timeRemaining: timeRemaining});
  },

  goToDetailBase: function(){
    hashHistory.push("/projects/"+this.props.params.projectId);
  },

  goToComments: function(){
    hashHistory.push("/projects/"+this.props.params.projectId + "/comments");
  },

  goToUpdates: function(){
    hashHistory.push("/projects/"+this.props.params.projectId + "/updates");
  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;

    var days = Math.floor(this.state.timeRemaining/86400);
    var hours = Math.floor((this.state.timeRemaining/3600)-days*24);
    var minutes = Math.floor((this.state.timeRemaining/60) - hours*60 - days*60*24);
    var seconds = Math.floor(this.state.timeRemaining - days*86400 - hours*3600 - minutes*60);

    if(hours<10)
      hours = "0"+hours;
    if(minutes<10)
      minutes = "0"+minutes;
    if(seconds<10)
      seconds = "0"+seconds;

    var timer = (
      <div id="timer">
        Time Left:&nbsp;
        <span>{days}</span>:
      <span>{hours}</span>:
        <span>{minutes}</span>:
          <span>{seconds}</span>
      </div>
    );
    if(this.state.timeRemaining <= 0)
      timer = <div id="finished-timer">TIME OVER</div>;

    return (
      <div id="project-detail-container">
        {timer}
       <img id="project-main-image"
         src={project.main_image_url}
         onClick={this.goToDetailBase}/>
       <nav className="navbar navbar-default project-navbar">
         <ul className="nav navbar-nav project-navbar">
           <li className="link project-link" onClick={this.goToDetailBase}>
             Project Main Page
           </li>

           <li className="link project-link"onClick={this.goToComments}>
             Comments
           </li>

           <li className="link project-link"onClick={this.goToUpdates}>
             Updates
           </li>
         </ul>
       </nav>

       {this.props.children}
      </div>
    );
  }

});
