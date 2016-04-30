var ProjectClientActions = require("../../actions/ProjectClientActions"),
    UserStore = require("../../stores/UserStore"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project, commentBody: ""});
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

  goToUser: function(userId){
    hashHistory.push("/users/"+userId);
  },

  addComment: function(e){
    e.preventDefault();

    ProjectClientActions.addComment(
      this.props.params.projectId,
      UserStore.currentUser().id,
      this.state.commentBody
    );

    this.setState({commentBody: ""});
  },

  onCommentChange: function(e){
    this.setState({commentBody: e.target.value});
  },

  render: function(){
    var project = this.state.project;
    if(!project)
      return <div/>;
    var comments = project.comments.map(function(comment){
      return (<li key={comment.id} className="commentContainer">
        <p className="comment">{comment.body}</p>
        <div className="link"
          onClick={this.goToUser.bind(this, comment.userId)}>
          {UserStore.find(comment.user_id).username}
        </div>
        </li>);
    }.bind(this));

    return (
      <div id="project-comments=container">
        <ul id="project-comment-list">
          {comments}
        </ul>

        <form id="comment-form" onSubmit={this.addComment}>
          <textarea rows="5" cols="40"
            placeholder="Write comment here"
            className="input-area"
            value={this.commentBody}
            onChange={this.onCommentChange}/>
          <input type="submit" value="Add Comment"/>
        </form>
      </div>
    );
  }

});
