var Store = require("flux/utils").Store,
    Dispatcher = require("../dispatcher/Dispatcher"),
    ProjectConstants = require("../constants/ProjectConstants");

var ProjectStore = new Store(Dispatcher);

var _projects = {};
var _currentProjectId = -1;

function addAll(projects){
  if(_currentProjectId !== -1){
    var current = _projects[_currentProjectId];
    _projects = {};
    _projects[_currentProjectId] = current;
  }

  projects.forEach(function(project){
    if(!(project.id === _currentProjectId))
      _projects[project.id] = project;
  });
  ProjectStore.__emitChange();
}

function addOne(project){
  _projects[project.id] = project;
  _currentProjectId = project.id;
  ProjectStore.__emitChange();
}

function addComment(comment) {
  var toComment = _projects[comment.projectId];

  if(toComment.comments != undefined)
    toComment.comments.push(comment);

  ProjectStore.__emitChange();
}

function addFollow(follow) {
  _projects[follow.project_id].follows.push(follow);
  ProjectStore.__emitChange;
}

function removeFollow(followId) {

}

function addUpdate(update) {
  var toUpdate = _projects[update.project_id];

  if(toUpdate.updates !== undefined)
    toUpdate.updates.push(update);

  ProjectStore.__emitChange();
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

ProjectStore.search = function(searchString) {
  if(searchString.length === 0)
    return [];

  var projectsArray = Object.keys(_projects).map(function(key){
    return _projects[key];
  });
  return projectsArray.filter(function(project){
    var title = project.title;
    return ((title.toLowerCase()).indexOf(searchString.toLowerCase()) > -1);
  }).splice(0,5);
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
    case ProjectConstants.RECEIVE_SINGLE_UPDATE:
      addUpdate(payload.update);
      break;
    case "RECEIVE_FOLLOW":
      addFollow(payload.follow);
      break;
    case "LOSE_FOLLOW":
      removeFollow(payload.follow);
      break;

  }

};

module.exports = ProjectStore;
