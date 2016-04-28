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
    ProjectClientActions.fetchSingleProject(this.props.params.projectId);
  },

  componentWillUnmount: function(){
    this.projectListener.remove();
    this.userListener.remove();
  },

  changed: function(){
    this.setState({project: ProjectStore.find(this.props.params.projectId)});
  },

  clickReward: function(rewardAmount){
    if(!UserStore.currentUser())
      hashHistory.push("/signin");
    else {
      ProjectClientActions.contribute(this.props.params.projectId,
        rewardAmount,
        UserStore.currentUser().id);
    }

  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;


    var rewardElements = project.rewards.map(function(reward, idx){
      return(
        <li key={idx} onClick={this.clickReward.bind(null, reward[0])}
          className="reward-list-item">
          <h2 className="reward-header">${reward[0]}</h2>
          <article className="reward-body">
            <center>
              {reward[1]}
            </center>
          </article>
        </li>
      );
    }.bind(this));

    return (
      <div className="project-detail-container">
        <div className="project-title-body">
          <h1 className="project-detail-title">{project.title}</h1>
          <h2 className="project-detail-author">
            {UserStore.find(project.user_id).username}
          </h2>
          <article className="project-detail-body"><p>{project.body}</p></article>
        </div>
        <ul className="reward-list">
          <div className="reward-goal">
            ${project.funding} raised out of ${project.goal}
          </div>
          {rewardElements}
        </ul>
      </div>
    );
  }

});
