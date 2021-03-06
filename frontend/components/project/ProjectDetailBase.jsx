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
    return({project: project, showConfirmationModal: false, selectedReward: [0,0], error: ""});
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

    else if (this.state.project.deadline + this.state.project.age <= 0) {
      var error = (
      <div>
        <div className="error">Project Funding Period Expired</div>
      </div>
    );
      this.setState({showConfirmationModal: false, showErrorModal: true, error: error});
    }
    else if (UserStore.currentUser().money < rewardAmount) {
      var error = (
      <div>
        <div className="error">Insufficient funds</div>
        <div className="link" onClick={this.goToCurrentUser}>Click here to add more</div>

      </div>
    );
      this.setState({showConfirmationModal: false, showErrorModal: true, error: error});
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
          className="modal-confirm modal-confirm-reward"
          overlayClassName="modal-confirm-overlay"
         isOpen={this.state.showConfirmationModal}
         onRequestClose={this.closeModal}>
         <div classname="confirm-selection-modal">Confirm!</div><br/>
          <div>Are you sure you want to buy the reward:</div><br/>
          <div>
            {this.state.selectedReward[0]} : {this.state.selectedReward[1]}
          </div>
          <div className="modal-buttons">
            <button
              className="btn btn-default"
              onClick={this.clickRewardConfirmed.bind(this, this.state.selectedReward[0])}>
              Yes
            </button>
            <button
              className="btn btn-default"
              onClick={this.closeModal}>
              No
            </button>
          </div>
        </Modal>

        <Modal
          className="modal-confirm"
          overlayClassName="modal-confirm-overlay"
         isOpen={this.state.showErrorModal}
         onRequestClose={this.closeErrorModal}>
          {this.state.error}
         <button className="btn btn-default" onClick={this.closeErrorModal}>Close</button>
       </Modal>

        <div id="project-title-body">
          <h1 id="project-detail-title">{project.title}</h1>
          <a id="project-detail-author"
            href={"#/users/"+author.id}>
            {author.username}
          </a>
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
