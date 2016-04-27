var ProjectServerActions = require("../actions/ProjectServerActions");


module.exports = {
  fetchProjects: function(){
    $.ajax({
      method: "GET",
      url: "/projects",
      dataType: "json",
      success: ProjectServerActions.receiveAllProjects
    });
  }
};
