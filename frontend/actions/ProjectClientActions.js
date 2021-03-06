var ProjectUtil = require("../util/ProjectUtil");


module.exports = {
  fetchProjects: ProjectUtil.fetchProjects,
  createProject: ProjectUtil.createProject,
  fetchSingleProject: ProjectUtil.fetchSingleProject,
  contribute: ProjectUtil.contribute,
  addComment: function(projectId, userId, body){

    var params = {
      project_id: projectId,
      user_id: userId,
      body: body
    };

    ProjectUtil.addComment(projectId, params);
  },

  addUpdate: function(projectId, title, body){

    var params = {
      project_id: projectId,
      title: title,
      body: body
    };

    ProjectUtil.addUpdate(projectId, params);
  },

  followProject: function(userId, projectId){
    var params = {
      project_id: projectId,
      user_id: userId
    };

    ProjectUtil.followProject(params);
  },

  unfollowProject: ProjectUtil.unfollowProject

};
