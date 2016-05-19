var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    UserStore = require("../../stores/UserStore"),
    React = require('react'),
    LinkedStateMixin = require('react-addons-linked-state-mixin'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  mixins: [LinkedStateMixin],

  getInitialState: function(){
    return ({
      title: "",
      body: "",
      goal: "",
      thumbnailImageUrl: "",
      mainImageUrl: "",
      deadline: "",
      rewards: [],
      currentRewardVal: "",
      currentRewardBody: ""
    });
  },

  componentDidMount: function(){
    window.scrollTo(0, 0);
  },

  handleSubmit: function(e){
    e.preventDefault();
    if(!UserStore.currentUser())
      hashHistory.push("/signin");

    if(!this.state.mainImageUrl){
      if(this.state.thumbnailImageUrl)
        this.state.mainImageUrl = this.state.thumbnailImageUrl;
      else
        this.state.mainImageUrl = undefined;
    }

    if(!this.state.thumbnailImageUrl)
      this.state.thumbnailImageUrl = this.state.mainImageUrl;

    var params = {
      title: this.state.title,
      body: this.state.body,
      goal: this.state.goal,
      deadline: this.state.deadline*60*60*24,
      thumbnail_image_url: this.state.thumbnailImageUrl,
      main_image_url: this.state.mainImageUrl,
      user_id: UserStore.currentUser().id,
      rewards: this.state.rewards
    };
    ProjectClientActions.createProject(params);
    hashHistory.push("/");
  },

  addReward: function(e){
    e.preventDefault();

    var newRewards =  this.state.rewards;
    newRewards.push(
      [this.state.currentRewardVal, this.state.currentRewardBody]
    );

    this.setState({
      rewards: newRewards,
      currentRewardVal: "",
      currentRewardBody: ""
    });
  },

  render: function(){
    var rewardsElements = this.state.rewards.map(function(reward){
      return <li className="project-form-reward-item">
        {reward[0]}: {reward[1]}
      </li>;
    });

    var goalText = "";
    if(rewardsElements.length > 0)
      goalText = "Current Rewards:";

    return (
      <form className="project-form" onSubmit={this.handleSubmit}>
        <input type="text"
          className="text-input-field"
          placeholder="Project Title"
          valueLink={this.linkState("title")}/><br/>

          <input type="number" step="any"
            className="text-input-field"
            placeholder="Funding Goal"
            valueLink={this.linkState("goal")}/><br/>

          <input type="text"
            className="text-input-field"
            placeholder="Thumbnail Url"
            valueLink={this.linkState("thumbnailImageUrl")}/><br/>

          <input type="text"
            placeholder="Main Image Url"
            className="text-input-field"
            valueLink={this.linkState("mainImageUrl")}/><br/>

          <input type="number"
            placeholder="Deadline (in days)"
            className="text-input-field"
            valueLink={this.linkState("deadline")}/><br/>

            <textarea
              rows="4" cols="40"
              className="input-area"
              placeholder="Talk About Your Project Here!"
              valueLink={this.linkState("body")}/><br/>

            <div>{goalText}</div>
      <ul className="project-form-rewards">
        {rewardsElements}
      </ul>


          <input type="number" step="any"
            className="text-input-field"
            placeholder="Reward Amount"
            valueLink={this.linkState("currentRewardVal")}/><br/>

          <textarea rows="3" cols="40"
            className="input-area"
            placeholder="Reward Text"
            valueLink={this.linkState("currentRewardBody")}/>

          <button className="btn btn-default" onClick={this.addReward}>Add Reward</button><br/>


      <input type="submit" className="btn btn-success" value="Create Project!"/>
      </form>
    );
  }

});
