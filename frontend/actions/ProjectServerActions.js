var Dispatcher = require("../dispatcher/Dispatcher"),
    ProjectConstants = require("../constants/ProjectConstants");

module.exports = {
  receiveAllProjects: function(projects){
    Dispatcher.dispatch({
      actionType: ProjectConstants.RECEIVE_PROJECTS,
      projects: projects
    });
  }

};
