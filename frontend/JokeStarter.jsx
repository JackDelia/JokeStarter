var UserForm = require('./components/user/UserForm'),
    SignInForm = require('./components/user/SignInForm'),
    SignInButtons = require('./components/user/SignInButtons'),
    ProjectIndex = require('./components/project/ProjectIndex'),
    ProjectDetail = require('./components/project/ProjectDetail'),

    UserUtil = require("./util/UserUtil"),
    UserClientActions = require("./actions/UserClientActions"),
    UserStore = require("./stores/UserStore"),

    React = require('react'),
    ReactDom = require('react-dom'),

    ReactRouter = require('react-router'),
    Router = ReactRouter.Router,
    Route = ReactRouter.Route,
    IndexRoute = ReactRouter.IndexRoute,
    hashHistory = ReactRouter.hashHistory;

debugger;

var App = React.createClass({


  render: function(){

    return (
    <div className="main">
      <SignInButtons/>
      <h1>JokeStarter</h1>
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

    </Route>
  </Router>
);

ReactDom.render(routes, document.getElementById("root"));
