# JokeStarter

[Heroku link][heroku]

[heroku]: http://www.jokestarter.herokuapp.com

## Minimum Viable Product

JokeStarter is a web application inspired by Kickstarter to allow people to get support for elaborate practical jokes. it will be built using Ruby on Rails and React.js.  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

- [ ] New account creation, login, and guest/demo login
- [x] Smooth, bug-free navigation
- [ ] Adequate seed data to demonstrate the site's features
- [ ] The minimally necessary features for a Kickstarter-inspired site: The ability to browse projects, project creation, and project contribution
- [x] Hosting on Heroku
- [ ] CSS styling that is satisfactorily visually appealing
- [ ] A production README, replacing this README

## Product Goals and Priorities

JokeStarter will allow users to do the following:

<!-- This is a Markdown checklist. Use it to keep track of your
progress. Put an x between the brackets for a checkmark: [x] -->

- [X] Create an account (MVP)
- [x] Log in / Log out (MVP)
- [ ] login as a Guest/Demo User (MVP)
- [ ] Create, read, and contribute to potential projects (MVP)
- [X] Create detailed explanations of projects (MVP)
- [x] View created projects  (MVP)
- [ ] Comment on projects (expected feature, but not MVP)
- [ ] Progress updates on projects (expected feature, but not MVP)
- [ ] Search Projects (expected feature, but not MVP)
- [ ] Browse projects by types/tags(expected feature, but not MVP)

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Cycles][flux-cycles]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: ./docs/views.md
[components]: ./docs/components.md
[flux-cycles]: ./docs/flux-cycles.md
[api-endpoints]: ./docs/api-endpoints.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and User Authentication (0.5 days)

**Objective:** Functioning rails project with Authentication

- [x] create new project
- [x] create `User` model
- [x] authentication
- [x] user signup/signin pages
- [x] blank landing page after signin

### Phase 2: Projects Model, API, and basic APIUtil (1.5 days)

**Objective:** Projects can be created, read, edited and destroyed through
the API.

- [x] create `Project` model
- [x] seed the database with a small amount of test data
- [x] CRUD API for projects (`ProjectsController`)
- [x] jBuilder views for projects
- [x] setup Webpack & Flux scaffold
- [x] setup `APIUtil` to interact with the API
- [x] test out API interaction in the console.

### Phase 3: Start Styling (1.5 days)

**Objective:** Existing pages (including singup/signin) will look good.

- [x] create a basic style guide
- [x] position elements on the page
- [x] add basic colors & styles


### Phase 4: Flux Architecture and Router (1.5 days)

**Objective:** Projects can be created, read, edited and destroyed with the
user interface.

- [x] setup the flux loop with skeleton files
- [x] setup React Router
- implement each project component, building out the flux loop as needed.
  - [x] `ProjectsIndex`
  - [x] `ProjectIndexItem`
  - [x] `ProjectDetail`
  - [x] `ProjectForm`
- [x] save Projects to the DB when the form loses focus or is left idle
  after editing.

### Phase 5: Contributions (1 day)

  **Objective:** Allow Contributions to projects.

  - [ ] create `Contributions` model
  - [ ]  build out API, Flux loop, and components for contribution CRUD
  - [ ] Use CSS to style new views



### Phase 6: Comments and Updates (1 day)

**Objective:** Allow Commenting on projects, and allow creators to post updates about projects.

- [ ] create `Comment` model
- [ ] create `Update` model
- [ ]  build out API, Flux loop, and components for Comment/update CRUD
- [ ] Use CSS to style new views


### Phase 6: Tags (1.5 days)

**Objective:** Projects can be tagged with multiple tags, and tags are searchable. They also have a type, also searchable

- [ ] create `Tag` model and join table
- build out API, Flux loop, and components for:
  - [ ] fetching tags for Project
  - [ ] adding tags to Projects
  - [ ] searching Projects by tag
- [ ] Style new elements

### Phase 7: Styling Cleanup and Seeding (2.5 day)

**objective:** Make the site feel more cohesive and awesome.

- [ ] Get feedback on my UI from others
- [ ] Refactor HTML classes & CSS rules
- [ ] Add modals, transitions, and other styling flourishes.

### Bonus Features (TBD)
- [ ] Set timers/countdowns for Projects
- [ ] Allow People to like projects
- [ ] Allow Users to follow projects
- [ ] Multiple sessions
