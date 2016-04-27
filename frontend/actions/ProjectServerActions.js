var Dispatcher = require("../dispatcher/Dispatcher"),
    ProjectConstants = require("../constants/ProjectConstants");

module.exports = {
  receiveAllProjects: function(projects){
    Dispatcher.dispatch({
      actionType: ProjectConstants.RECEIVE_PROJECTS,
      projects: projects
    });

  },

  receiveOneProject: function(project){
    Dispatcher.dispatch({
      actionType: ProjectConstants.RECEIVE_SINGLE_PROJECT,
      project: project
    });
  }

};
