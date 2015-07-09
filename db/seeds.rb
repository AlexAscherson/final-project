# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

Group.delete_all

Tournament.delete_all

Event.delete_all


# ...........................

alex = User.create! :name => 'Alex', :bio => 'My Bio',  :email => 'alex@gmail.com', :password => 'password', :password_confirmation => 'password'
harry = User.create! :name => 'Harry', :bio => 'My Bio', :email => 'harry@gmail.com', :password => 'password', :password_confirmation => 'password'
zoe = User.create! :name => 'Zoe', :bio => 'My Bio', :email => 'zoe@gmail.com', :password => 'password', :password_confirmation => 'password'



# ...........................

alexsgroup = Group.create!(
  name: 'Alexs Awesome Group',
  group_description: 'This is the description',
  creator_id: 1,
  user_id: [1, 2, 3,]
      )


harrysgroup = Group.create!(
  name: 'Harrys Awesome Group',
  group_description: 'This is the description',
  creator_id: 2,
  user_id: [1, 2, 3]
      )

zoesgroup = Group.create!(
  name: 'Zoes Awesome Group',
  group_description: 'This is the description',
  creator_id: 3,
  user_id: [2, 3]
      )


alexstournament = Tournament.create! :creator_id => 1, :name => 'Dine with friends beta test', :tournament_description => 'This is an alpha test really', :group_id => 1, :user_id => [1, 2, 3]

alstournyround1 = Event.create! :host_id => 1, :name => 'Dinner at Alexs house', :event_description => 'First round!  Gonna be great', :group_id => 1, :user_id => [1, 2, 3], :tournament_id => 1, :location =>Camden, :outcome: 5
alstournyround2 = Event.create! :host_id => 2, :name => 'Dinner at Harrys house', :event_description => 'Harry house.  Its the same as mine...', :group_id => 1, :user_id => [1, 2, 3], :tournament_id => 1, :location =>Camden, :outcome: 5
alstournyround3 =Event.create! :host_id => 3, :name => 'Dinner at Zoes house', :event_description => 'Final at zoes...', :group_id => 1, :user_id => [1, 2, 3], :tournament_id => 1, :location =>West London, :outcome: 7


alex.group_id << 1 << 2 << 3
# Group id = what groups you are in - Wait is this redundant?
alex.save


# .....................