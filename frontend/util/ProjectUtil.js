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

  fetchSingleProject: function(id){
    $.ajax({
      method: "GET",
      url: "/projects/" + id,
      dataType: "json",
      success: ProjectServerActions.receiveOneProject
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
