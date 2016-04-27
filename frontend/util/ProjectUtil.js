var ProjectServerActions = require("../actions/ProjectServerActions");


module.exports = {
  fetchProjects: function(){
    $.ajax({
      method: "GET",
      url: "/projects",
      dataType: "json",
      success: ProjectServerActions.receiveAllProjects
    });
  },

  createProject: function(params){
    $.ajax({
      method: "POST",
      url: "/projects",
      dataType: "json",
      data: {project: params},
      success: ProjectServerActions.receiveOneProject
    });
  }
};
