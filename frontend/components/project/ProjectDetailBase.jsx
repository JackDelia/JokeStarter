var ProjectClientActions = require("../../actions/ProjectClientActions"),
    UserClientActions = require("../../actions/UserClientActions"),
    UserStore = require("../../stores/UserStore"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    var project = ProjectStore.find(this.props.params.projectId);
    return({project: project, showConfirmationModal: false, selectedReward: [0,0]});
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

  clickRewardConfirmed: function(rewardAmount){
    if(!UserStore.currentUser())
      hashHistory.push("/signin");
    else if (UserStore.currentUser().money < rewardAmount) {
      this.setState({showConfirmationModal: false, showErrorModal: true});
    }
    else {
      ProjectClientActions.contribute(this.props.params.projectId,
        rewardAmount,
        UserStore.currentUser().id);

        UserClientActions.alterMoney(-rewardAmount);

        this.setState({showConfirmationModal: false});
    }

  },

  clickReward: function(reward){
    this.setState({showConfirmationModal: true, selectedReward: reward});
  },

  closeModal: function(reward){
    this.setState({showConfirmationModal: false});
  },

  closeErrorModal: function(reward){
    this.setState({showErrorModal: false});
  },

  goToUser: function(){
    hashHistory.push("/users/"+this.state.project.user_id);
  },

  goToCurrentUser: function(){
    hashHistory.push("/users/"+UserStore.currentUser().id);
  },

  render: function(){
    var project = this.state.project;
    var author = UserStore.find(project.user_id);
    if(!project || !author)
      return <div/>;
    var rewardClasses = "reward-goal";
    if(project.funding >= project.goal)
      rewardClasses += " complete";

    var rewardElements = project.rewards.map(function(reward, idx){
      return(
        <li key={idx} onClick={this.clickReward.bind(null, reward)}
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
      <div id="project-detail-container">
        <Modal
          className="modal-confirm"
          overlayClassName="modal-confirm-overlay"
         isOpen={this.state.showConfirmationModal}>
         <div classname="confirm-selection-modal">Confirm!</div><br/>
          <div>Are you sure you want to buy the reward:</div><br/>
          <div>
            {this.state.selectedReward[0]} : {this.state.selectedReward[1]}
          </div>
          <div className="modal-buttons">
            <button
              className="button"
              onClick={this.clickRewardConfirmed.bind(this, this.state.selectedReward[0])}>
              Yes
            </button>
            <button
              className="button"
              onClick={this.closeModal}>
              No
            </button>
          </div>
        </Modal>

        <Modal
          className="modal-confirm"
          overlayClassName="modal-confirm-overlay"
         isOpen={this.state.showErrorModal}>
         <div className="error">Insufficient funds</div>
         <div className="link" onClick={this.goToCurrentUser}>Click here to add more</div>
         <button className="button" onClick={this.closeErrorModal}>Close</button>
       </Modal>

        <div id="project-title-body">
          <h1 id="project-detail-title">{project.title}</h1>
          <h2 className="project-detail-author link"
            onClick={this.goToUser}>
            {author.username}
          </h2>
          <article className="project-detail-body"><p>{project.body}</p></article>
        </div>
        <ul id="reward-list">
          <div className={rewardClasses}>
            ${project.funding} raised out of ${project.goal}
          </div>
          {rewardElements}
        </ul>
      </div>

    );
  }

});
