# JokeStarter

Link to live site: [JokeStarter][heroku]

[heroku]: jokestarter.herokuapp.com


## Description

JokeStarter is a Kickstarter-like web application that allows users to ask for funding for joke projects.  

## Features

JokeStarter uses BCrypt's methods to create secure authorization on the rails backend which is then passed to the react frontend via ajax requests. It is then handled by a fluxstore in order to tell if a user is signed in.

![auth]


JokeStarter allows for the creation of new projects

![create]

As well as viewing projects,

![project]

contributing to projects,

![contribute]

commenting on projects,

![comment]

and posting updates to your own projects

![update]



[auth]: ./docs/readme/ss_auth.png
[create]: ./docs/readme/ss_project_form.png
[project]: ./docs/readme/ss_project_detail.png
[contribute]: ./docs/readme/ss_contribute.png
[comment]: ./docs/readme/ss_comment.png
[update]: ./docs/readme/ss_update.png
