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


# ..........Users.................

alex = User.create! :name => 'Alex', :bio => 'My Bio',  :email => 'alex@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"alex.jpg"
harry = User.create! :name => 'Harry', :bio => 'My Bio', :email => 'harry@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"harry.jpg"
zoe = User.create! :name => 'Zoe', :bio => 'My Bio', :email => 'zoe@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"zoe.jpg"
grouse = User.create! :name => 'Grouse', :bio => 'My Bio', :email => 'grouse@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"grouse.jpg"
remes = User.create! :name => 'Remes', :bio => 'My Bio', :email => 'remes@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"remes.jpg"
sam = User.create! :name => 'Sam', :bio => 'My Bio', :email => 'sam@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"sam.jpg"
heloise = User.create! :name => 'Heloise', :bio => 'My Bio', :email => 'heloise@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"heloise.jpg"
jen = User.create! :name => 'Jen', :bio => 'My Bio', :email => 'jen@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"jen.jpg"



# ...........Groups................

alexsgroup = Group.create!(
  name: 'Alexs Awesome Group',
  group_description: 'This is the description',
  creator_id: 1,
  user_id: [1, 2, 3, 4, 5, 6, 7, 8],
  imageurl: "group1.jpg"
      )


harrysgroup = Group.create!(
  name: 'Harrys Awesome Group',
  group_description: 'This is the description',
  creator_id: 2,
  user_id: [1, 2, 3],
  imageurl: "group.jpg"

      )

zoesgroup = Group.create!(
  name: 'Zoes Awesome Group',
  group_description: 'This is the description',
  creator_id: 3,
  user_id: [2, 3],
  imageurl: "dinner.jpg"

      )

# ........Tournaments ............

alexstournament = Tournament.create! :creator_id => 1, :name => 'Dine with friends Alpha test', :tournament_description => 'This is the first ever test of the Dine with Friends App.  It will be a short and simple tournament, only rule: no ice-cream', :group_id => 1, :user_id => [1, 2, 3], :imageurl => "dinner-party2.jpg", :stake => 10
alexstournament2 = Tournament.create! :creator_id => 1, :name => 'Dine with friends Beta test', :tournament_description => 'This is an beta test', :group_id => 1, :user_id => [1, 2, 3], :imageurl => "dinner2.jpg", :stake => 20
alexstournament3 = Tournament.create! :creator_id => 1, :name => 'Dine with friends bugtesting test', :tournament_description => 'Bugfixing Party', :group_id => 1, :user_id => [1, 2, 3], :imageurl => "dinner3.jpg", :stake => 30


# ........EVENTS...........
alstournyround1 = Event.create! :imageurl => "http://rs1229.pbsrc.com/albums/ee473/jvlentini/TESTCARDS/bbc-hd-test-card.png~c200", :host_id => 1, :name => 'Dinner at Alexs house', :event_description => 'First round!  Gonna be great', :group_id => 1, :user_id => [1, 2, 3, 4, 5, 6, 7, 8], :tournament_id => 1, :location =>'Camden', :outcome => 5
alstournyround2 = Event.create! :imageurl => "dinner3", :host_id => 2, :name => 'Dinner at Harrys house', :event_description => 'Harry house.  Its the same as mine...', :group_id => 1, :user_id => [1, 2, 3, 4, 5, 6, 7, 8], :tournament_id => 1, :location =>'Camden', :outcome => 5
alstournyround3 = Event.create! :imageurl => "dinner4", :host_id => 3, :name => 'Dinner at Zoes house', :event_description => 'Final at zoes...', :group_id => 1, :user_id => [1, 2, 3, 4, 5, 6, 7, 8], :tournament_id => 1, :location =>'West London', :outcome => 7
alstournyround4 = Event.create! :imageurl => "dinner5", :host_id => 3, :name => 'Dinner at Grouses house', :event_description => 'Grouse House', :group_id => 1, :user_id => [1, 2, 3, 4, 5, 6, 7, 8], :tournament_id => 1, :location =>'West London', :outcome => 7
alstournyround5 = Event.create! :imageurl => "dinner6", :host_id => 3, :name => 'Dinner at Remes house', :event_description => 'Remes Flat', :group_id => 1, :user_id => [1, 2, 3, 4, 5, 6, 7, 8], :tournament_id => 1, :location =>'South London', :outcome => 7


alex.group_id << 1 << 2 << 3
# Group id = what groups you are in - Wait is this redundant?
alex.save


# .....................