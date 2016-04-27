var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project});
  },

  componentDidMount: function(){
    ProjectStore.addListener(this.changed);
    ProjectClientActions.fetchProjects();
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
          <article className="reward-body">{project.rewards[rewardKey]}</article>
        </li>
      );
    });

    return (
      <div className="project-detail-container">
        <div className="project-title-body">
          <h1 className="project-detail-title">{project.title}</h1>
          <article className="project-detail-body">{project.body}</article>
        </div>
        <ul className="reward-list">{rewardElements}</ul>
      </div>
    );
  }

});
