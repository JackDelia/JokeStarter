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
  },

  contribute: function(projectId, rewardAmount, userId){
    $.ajax({
      method: "POST",
      url: "/projects/"+projectId+"/contributions",
      dataType: "json",
      data: {contribution:
        {
          amount: rewardAmount,
          project_id: projectId,
          user_id: userId
        }
      },
      success: ProjectServerActions.receiveOneProject
    });
  }
};
