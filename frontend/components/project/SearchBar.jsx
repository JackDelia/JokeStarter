var ProjectClientActions = require("../../actions/ProjectClientActions"),
    ProjectStore = require("../../stores/ProjectStore"),
    React = require('react'),
    Modal = require('react-modal'),
    hashHistory = require('react-router').hashHistory;

module.exports = React.createClass({
  getInitialState: function(){
    return({searchString: "", projects: []});
  },

  onSearchUpadate: function(e){
    this.setState({searchString: e.target.value}, function(){
      var projects = ProjectStore.search(this.state.searchString);
      this.setState({projects: projects});

    }.bind(this));
  },

  render: function(){
    var searchResults = this.state.projects.map(function(project){
      return (
        <li key={project.id}>{project.title}</li>
      );
    });

    return (
      <div className="left-nav">
        <input type="text"
          id="searchbar"
          className="text-input-field"
          placeholder="Search"
          value={this.state.searchString}
          onChange={this.onSearchUpadate}/>
        <ul>
          {searchResults}
        </ul>
    </div>);
  }

});
