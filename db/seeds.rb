# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jack = User.new(username: "Jack", password: "terraadnihilumvenire")
jack.reset_session_token_and_save

Project.create(title: "First",
  body: "the first project",
  goal: 25,
  rewards: {1 => "something", 2 => "something else"},
  user_id: jack.id)
