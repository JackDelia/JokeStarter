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
  },

  receiveOneComment: function(comment){
    Dispatcher.dispatch({
      actionType: ProjectConstants.RECEIVE_SINGLE_COMMENT,
      comment: comment
    });
  },

  receiveOneUpdate: function(update){
    Dispatcher.dispatch({
      actionType: ProjectConstants.RECEIVE_SINGLE_UPDATE,
      update: update
    });
  },

  receiveOneFollow: function(follow){
    Dispatcher.dispatch({
      actionType: "RECEIVE_FOLLOW",
      follow: follow
    });
  },

  loseOneFollow: function(follow){
  Dispatcher.dispatch({
      actionType: "LOSE_FOLLOW",
      follow: follow.deleted
    });
  }

};
