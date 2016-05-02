# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jack = User.new(username: "Jack", password: "terraadnihilumvenire")
jack.reset_session_token_and_save

guest = User.new(username: "Guest", password: "gloriainexcelsiusdiscordia")
guest.reset_session_token_and_save

Project.create(title: "First",
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
    eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
     pariatur. Excepteur sint occaecat cupidatat non proident,
     sunt in culpa qui officia deserunt mollit anim id est laborum.",
  goal: 25,
  rewards: [
    [1, "something"],
    [20, "something else"]],
  user_id: jack.id,
  thumbnail_image_url: "http://www.pbh2.com/wordpress/wp-content/uploads/2014/03/practical-jokes.jpg",
  main_image_url: "http://www.pbh2.com/wordpress/wp-content/uploads/2014/03/practical-jokes.jpg")

Project.create(title: "Second",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")

Project.create(title: "phoned-in",
  body: "Lorem",
  goal: 1000000,
  rewards:[
    [1, "urbf"],
    [2, "ubvg"],
    [3, "ufurbf"]
  ],
  user_id: jack.id,
  thumbnail_image_url: "https://usercontent2.hubstatic.com/572751_f520.jpg",
  main_image_url: "https://usercontent2.hubstatic.com/572751_f520.jpg")


Project.create(title: "More",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in r
      eprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
       pariatur. Excepteur sint occaecat cupidatat non proident,
       sunt in culpa qui officia deserunt mollit anim id est laborum.",
    goal: 30,
    rewards: [
      [1, "ucbrbufbrb rubfbrufrf irffnrnfn
      bfu ufbrb frbfu rbfubrbf urbufbbrf uburbf brubfubrbf"],

      [20, "ubvonvebive utbgivetrbverb iugbbruigbiebiug ertgbbebgi
      bigbebugbrebguir begburbgriu ebguribgir bgrbeiubg"],

      [20, "ufurbfurb ubrubugbrgb urbgbuburb bugburbgub gugbrbgurbgu
      gubrbug burbgubru gburbgbru gburbgrbu gburbgbrubg
      ugrbugrb ugbubgr grbguugbug bubuini"]],
    user_id: jack.id,
    thumbnail_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg",
    main_image_url: "http://www.uncubeme.com/wp-content/uploads/2008/08/officejoke.jpg")
