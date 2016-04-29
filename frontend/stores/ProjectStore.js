var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    ProjectConstants = require("../constants/ProjectConstants");

var ProjectStore = new Store(Dispatcher);

var _projects = {};

function addAll(projects){
  _projects = {};

  projects.forEach(function(project){
    _projects[project.id] = project;
  });
  ProjectStore.__emitChange();
}

function addOne(project){
  _projects[project.id] = project;
  ProjectStore.__emitChange();
}

function addComment(comment) {
  var toComment = _projects[comment.projectId];

  if(toComment.comments)
    toComment.comments.push(comment);
}

ProjectStore.all = function(){
  var projectsArray = [];

  var projectKeys = Object.keys(_projects);
  for (var i = 0; i < projectKeys.length; i++) {
    projectsArray.push(_projects[projectKeys[i]]);
  }

  return projectsArray;
};

ProjectStore.find = function(id){
  return _projects[id];
};

ProjectStore.__onDispatch = function(payload){
  switch (payload.actionType) {
    case ProjectConstants.RECEIVE_PROJECTS:
      addAll(payload.projects);
      break;
    case ProjectConstants.RECEIVE_SINGLE_PROJECT:
      addOne(payload.project);
      break;
    case ProjectConstants.RECEIVE_SINGLE_COMMENT:
      addComment(payload.comment);
      break;

  }

};

module.exports = ProjectStore;
