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
    ProjectClientActions.fetchProjects();
    this.setState({searchString: e.target.value}, function(){
      var projects = ProjectStore.search(this.state.searchString);
      this.setState({projects: projects});

    }.bind(this));
  },

  render: function(){
    var searchResults = this.state.projects.map(function(project){
      return (
        <li key={project.id}
          className="search-result"
          onClick={function()
            {
              hashHistory.push("/projects/" + project.id);
              this.setState({searchString: "", projects: []});
          }.bind(this)}>
            {project.title}
        </li>
      );
    }.bind(this));

    return (
      <div className="left-nav" id="searchbar-container">
        <input type="text"
          id="searchbar"
          className="text-input-field"
          placeholder="Search"
          value={this.state.searchString}
          onChange={this.onSearchUpadate}/>
        <ul id="search-results">
          {searchResults}
        </ul>
    </div>);
  }

});
