var ProjectClientActions = require("../../actions/ProjectClientActions"),
    UserStore = require("../../stores/UserStore"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project, updateBody: ""});
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

  addUpdate: function(e){
    e.preventDefault();

    ProjectClientActions.addUpdate(
      this.props.params.projectId,
      this.state.updateBody
    );

    this.setState({updateBody: ""});

  },

  onUpdateChange: function(e){
    this.setState({updateBody: e.target.value});
  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;

    var form = "";

    if(UserStore.currentUser() && this.state.project.user_id === UserStore.currentUser().id)
      form = (
        <form id="update-form" onSubmit={this.addUpdate}>
        <textarea rows="3" cols="40"
          placeholder="Write update here"
          className="input-area"
          id="update-input-area"
          value={this.state.updateBody}
          onChange={this.onUpdateChange}/><br/>
        <input type="submit" className="btn" value="Add Update"/>
      </form>
    );

    var updates = project.updates.map(function(update){
      return (<li key={update.id} className="updateContainer">
        <p className="update">{update.body}</p>
        </li>);
    });

    if (updates.length === 0)
      updates = <div className="placeholder">No Updates Yet!</div>;

    return (
      <div id="project-updates=container">
        <ul id="project-update-list">
          {updates}
        </ul>
        {form}
      </div>
    );
  }

});
