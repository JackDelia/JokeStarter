var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
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

  changed: function(){
    this.setState({projects: ProjectStore.all()});
  },

  render: function(){
    var projectElements = this.state.projects.map(function(project){
      return <li className="project-list-item"
        key={project.id}>{project.title}</li>;
    });
    return (
      <ul className="project-index-container">
        {projectElements}
      </ul>
    );
  }
});
