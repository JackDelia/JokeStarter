var UserForm = require('./components/user/UserForm'),
    SignInForm = require('./components/user/SignInForm'),
    SignInButtons = require('./components/user/SignInButtons'),
    ProjectIndex = require('./components/project/ProjectIndex'),
    ProjectDetail = require('./components/project/ProjectDetail'),
    ProjectForm = require('./components/project/ProjectForm'),

    UserUtil = require("./util/UserUtil"),
    ProjectUtil = require("./util/ProjectUtil"),
    UserClientActions = require("./actions/UserClientActions"),
    UserStore = require("./stores/UserStore"),

    React = require('react'),
    ReactDom = require('react-dom'),

    ReactRouter = require('react-router'),
    Router = ReactRouter.Router,
    Route = ReactRouter.Route,
    IndexRoute = ReactRouter.IndexRoute,
    hashHistory = ReactRouter.hashHistory;

window.ProjectUtil = ProjectUtil;

var App = React.createClass({

  componentDidMount: function(){
    UserClientActions.fetchUsers();
  },

  clickHeader: function(){
    hashHistory.push("/");
  },

  render: function(){

    return (
    <div className="main">
      <SignInButtons/>
      <h1 className="main-header" onClick={this.clickHeader}>JokeStarter</h1>
      {this.props.children}
    </div>
    );
  }
});


var routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={ProjectIndex}/>
      <Route path="projects/:projectId" component={ProjectDetail}/>
      <Route path="signin" component={SignInForm}/>
      <Route path="signup" component={UserForm}/>
      <Route path="newproject" component={ProjectForm}/>
    </Route>
  </Router>
);

ReactDom.render(routes, document.getElementById("root"));
