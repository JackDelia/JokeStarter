var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    return ({projects: ProjectStore.all()});
  },

  componentDidMount: function(){
    this.listener = ProjectStore.addListener(this.changed);
    ProjectClientActions.fetchProjects();
  },

  componentWillUnmount: function(){
    this.listener.remove();
  },

  changed: function(){
    this.setState({projects: ProjectStore.all()});
  },

  handleClick: function(id){
    hashHistory.push("projects/"+id);
  },

  createNew: function(){
    if(UserStore.currentUser())
      hashHistory.push("newproject");
    else
      hashHistory.push("signin");
  },

  render: function(){
    var projectElements = this.state.projects.map(function(project){
      return <li className="project-list-item"
        key={project.id}
        onClick={this.handleClick.bind(this, project.id)}>

        <img className="thumbnail"
          src={project.thumbnail_image_url}/>

        <div className="thumbnail-title">{project.title}</div></li>;
    }.bind(this));

    return (
      <div className="index-and-link-container">
        <ul className="project-index-container">
          {projectElements}
        </ul>

        <button className="btn btn-success"
          id="new-project-button"
          onClick={this.createNew}>
          Create New Project
        </button>
      </div>
    );
  }
});
