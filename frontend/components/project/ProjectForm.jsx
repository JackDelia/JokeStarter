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
      imageUrl: "",
      rewards: [],
      currentRewardVal: "",
      currentRewardBody: ""
    });
  },

  handleSubmit: function(e){
    e.preventDefault();
    var params = {
      title: this.state.title,
      body: this.state.body,
      goal: this.state.goal,
      thumbnail_image_url: this.state.imageUrl,
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

    return (
      <form className="project-form" onSubmit={this.handleSubmit}>
        <label>Title:
          <input type="text" valueLink={this.linkState("title")}/>
        </label><br/>

        <label>Goal:
            <input type="number" step="any" valueLink={this.linkState("goal")}/>
        </label><br/>

        <label>Thumbnail Url:
          <input type="text" valueLink={this.linkState("imageUrl")}/>
        </label><br/>

        <label>Body:
            <textarea rows="10" cols="40" valueLink={this.linkState("body")}/>
        </label><br/>
      <div>Rewards:</div>
      <ul className="project-form-rewards">
        {rewardsElements}
      </ul>


      <label>Amount:
          <input type="number" step="any"
            valueLink={this.linkState("currentRewardVal")}/>
      </label><br/>

      <label>Reward:
          <textarea rows="5" cols="40"
            valueLink={this.linkState("currentRewardBody")}/>
      </label><br/>

      <button onClick={this.addReward}>Add Reward</button>


      <input type="submit" value="Create Project!"/>
      </form>
    );
  }

});
