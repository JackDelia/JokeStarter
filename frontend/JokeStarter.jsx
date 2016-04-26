var UserForm = require('./components/user/UserForm'),

    UserUtil = require("./util/UserUtil"),
    UserClientActions = require("./actions/UserClientActions"),

    React = require('react'),
    ReactDom = require('react-dom'),

    ReactRouter = require('react-router'),
    Router = ReactRouter.Router,
    Route = ReactRouter.Route,
    IndexRoute = ReactRouter.IndexRoute,
    hashHistory = ReactRouter.hashHistory;



var App = React.createClass({
  render: function(){
    return (
    <div className="main">
      <h1>JokeStarter</h1>
      {this.props.children}
    </div>
    );
  }
});

var routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={UserForm}/>
    </Route>
  </Router>
);

ReactDom.render(routes, document.getElementById("root"));
