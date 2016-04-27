var ProjectClientActions = require("../../actions/ProjectClientActions"),
    UserStore = require("../../stores/UserStore"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project});
  },

  componentDidMount: function(){
    this.projectListener = ProjectStore.addListener(this.changed);
    this.userListener = UserStore.addListener(this.changed);
    ProjectClientActions.fetchProjects();
  },

  componentWillUnmount: function(){
    this.projectListener.remove();
    this.userListener.remove();
  },

  changed: function(){
    this.setState({project: ProjectStore.find(this.props.params.projectId)});
  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;

    var rewardsKeys = Object.keys(project.rewards);
    var rewardElements = rewardsKeys.map(function(rewardKey){
      return(
        <li key={rewardKey} className="reward-list-item">
          <h2 className="reward-header">${rewardKey}</h2>
          <article className="reward-body">
            <center>
              {project.rewards[rewardKey]}
            </center>
          </article>
        </li>
      );
    });

    return (
      <div className="project-detail-container">
        <div className="project-title-body">
          <h1 className="project-detail-title">{project.title}</h1>
          <h2 className="project-detail-author">
            {UserStore.find(project.user_id).username}
          </h2>
          <article className="project-detail-body"><p>{project.body}</p></article>
        </div>
        <ul className="reward-list">{rewardElements}</ul>
      </div>
    );
  }

});
