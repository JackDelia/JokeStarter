var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project});
  },

  componentDidMount: function(){
    this.projectListener = ProjectStore.addListener(this.changed);
    ProjectClientActions.fetchSingleProject(this.props.params.projectId);
  },

  componentWillUnmount: function(){
    this.projectListener.remove();
  },

  changed: function(){
    this.setState({project: ProjectStore.find(this.props.params.projectId)});
  },

  goToDetailBase: function(){
    hashHistory.push("/projects/"+this.props.params.projectId);
  },

  goToComments: function(){
    hashHistory.push("/projects/"+this.props.params.projectId + "/comments");
  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;

    return (
      <div id="project-detail-container">

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
         </ul>
       </nav>

       {this.props.children}
      </div>
    );
  }

});
