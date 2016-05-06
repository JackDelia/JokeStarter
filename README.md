# JokeStarter

Link to live site: [JokeStarter][heroku]

[heroku]: jokestarter.herokuapp.com


## Description

JokeStarter is a Kickstarter-like web application that allows users to ask for funding for joke projects.

It was made using rails to handle the backend and javascript (specifically react.js) to handle the frontend.

## Features

JokeStarter uses BCrypt's methods to create secure authorization on the rails backend which is then passed to the react frontend via ajax requests. It is then handled by a fluxstore in order to tell if a user is signed in.

Basic features are included like the ability to create and view projects, contribute to them, as well as more social aspects like commenting on projects and following them.


Login
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

Users have pages where they can view theirs and others accounts

![user]

They can add money to accounts (enough money being required to contribute)

![addmoney]

As well as view their followed and created projects

![projectview]


[auth]: ./docs/readme/ss_auth.png
[create]: ./docs/readme/ss_project_form.png
[project]: ./docs/readme/ss_project_detail.png
[contribute]: ./docs/readme/ss_contribute.png
[comment]: ./docs/readme/ss_comment.png
[update]: ./docs/readme/ss_update.png
[user]: ./docs/readme/ss_user.png
[addmoney]: ./docs/readme/ss_money.png
[projectview]: ./docs/readme/ss_userprojects.png
