# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

Group.delete_all

# ...........................

user1 = User.create! :name => 'Alex', :bio => 'My Bio',  :email => 'alex@gmail.com', :password => 'password', :password_confirmation => 'password'
user2 = User.create! :name => 'Harry', :bio => 'My Bio', :email => 'harry@gmail.com', :password => 'password', :password_confirmation => 'password'
user3 = User.create! :name => 'Zoe', :bio => 'My Bio', :email => 'zoe@gmail.com', :password => 'password', :password_confirmation => 'password'



# ...........................

eg1 = Group.create!(
  name: 'Alexs Awesome Group',
  group_description: 'This is the description',
  creator_id: 1,
  # user_id: [1, 2, 3]
      )

eg2 = Group.create!(
  name: 'Harrys Awesome Group',
  group_description: 'This is the description',
  creator_id: 1
      )

eg3 = Group.create!(
  name: 'Zoes Awesome Group',
  group_description: 'This is the description',
  creator_id: 1
      )

eg1.user_id << '1' << '2' << '3'
eg1.save

# .....................