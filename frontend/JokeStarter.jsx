var UserForm = require('./components/user/UserForm'),
    SignInForm = require('./components/user/SignInForm'),
    SignInButtons = require('./components/user/SignInButtons'),
    UserDetail = require('./components/user/UserDetail'),
    ProjectIndex = require('./components/project/ProjectIndex'),
    ProjectDetail = require('./components/project/ProjectDetail'),
    ProjectForm = require('./components/project/ProjectForm'),
    ProjectDetailBase = require('./components/project/ProjectDetailBase'),
    ProjectComments = require('./components/project/ProjectComments'),

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
      <div id="header-container">
      <img src="/assets/logo.png"
        className="main-header" onClick={this.clickHeader}/>
    </div>
      {this.props.children}
    </div>
    );
  }
});


var routes = (
  <Router onUpdate={function(){ window.scrollTo(0, 0);}} history={hashHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={ProjectIndex}/>
      <Route path="projects/:projectId" component={ProjectDetail}>
        <IndexRoute component={ProjectDetailBase}/>
        <Route path="comments" component={ProjectComments}/>
      </Route>
      <Route path="signin" component={SignInForm}/>
      <Route path="signup" component={UserForm}/>
      <Route path="users/:userId" component={UserDetail}/>
      <Route path="newproject" component={ProjectForm}/>
    </Route>
  </Router>
);

ReactDom.render(routes, document.getElementById("root"));
