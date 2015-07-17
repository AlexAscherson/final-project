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
grouse = User.create! :name => 'Ed', :bio => 'My Bio', :email => 'grouse@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"grouse.jpg"
remes = User.create! :name => 'Remes', :bio => 'My Bio', :email => 'remes@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"remes.jpg"
sam = User.create! :name => 'Sam', :bio => 'My Bio', :email => 'sam@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"sam.jpg"
heloise = User.create! :name => 'Heloise', :bio => 'My Bio', :email => 'heloise@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"heloise.jpg"
jen = User.create! :name => 'Jen', :bio => 'My Bio', :email => 'jen@gmail.com', :password => 'password', :password_confirmation => 'password', :profile_image_url =>"jen.jpg"



# ...........Groups................

alexsgroup = Group.create!(
  name: 'Food Fight North London 2015',
  group_description: 'Open Group for new members!  Come learn the ropes and meet some of the old hands.',
  creator_id: 1,

  imageurl: "group1.jpg"
      )


harrysgroup = Group.create!(
  name: 'Come Dine with Men',
  group_description: 'This is the description',
  creator_id: 2,

  imageurl: "group.jpg"

      )

zoesgroup = Group.create!(
  name: 'Forbidden Meat Club',
  group_description: 'Not your average Soylent Green.',
  creator_id: 3,

  imageurl: "dinner.jpg"

      )

# ........Tournaments ............

alexstournament = Tournament.create! :creator_id => 1, :name => 'Dinner and Movie night', :tournament_description => 'Dinner and a movie, sounds great, except the audiance never shuts up and you are rated on both.', :imageurl => "dinner-party2.jpg", :stake => 10
alexstournament2 = Tournament.create! :creator_id => 1, :name => 'Super Sunday', :tournament_description => 'Drunken Sunday Roasts.',  :imageurl => "dinner2.jpg", :stake => 20
alexstournament3 = Tournament.create! :creator_id => 1, :name => 'Pizza Making', :tournament_description => 'Bugfixing Party',  :imageurl => "dinner3.jpg", :stake => 30


# ........EVENTS...........
alstournyround1 = Event.create! :imageurl => "dinner1.jpg", :host_id => 1, :name => 'Dinner at Alexs house', :event_description => 'Guys so excited to be hosting first event!  Going to set the bar high so better be prepared!', :location =>'23 Elsworthy Road', :outcome => 5, :start_date => DateTime.new(07/16/2015) 
alstournyround2 = Event.create! :imageurl => "dinner3.jpg", :host_id => 2, :name => 'Dinner at Harrys house', :event_description => 'So I wasnt sure what to make or do, so Im falling back on a classic, Theme is jurassic park, you guys better dress up as im going to make all the insane food they had in the kitchen.', :location =>'23 Elsworthy Road', :outcome => 5, :start_date => DateTime.new(07/17/2015) 
alstournyround3 = Event.create! :imageurl => "dinner4.jpg", :host_id => 3, :name => 'Dinner at Zoes house', :event_description => 'Not sure what to say here so im going to think about it and update it later.', :location =>'West London', :outcome => 7, :start_date => DateTime.new(07/18/2015) 
alstournyround4 = Event.create! :imageurl => "dinner5.jpg", :host_id => 4, :name => 'Dinner at Eds house', :event_description => 'Not sure what to say here so im going to think about it and update it later.', :location =>'West London', :outcome => 7, :start_date => DateTime.new(07/19/2015) 
alstournyround5 = Event.create! :imageurl => "dinner6.jpg", :host_id => 5, :name => 'Dinner at Remes house', :event_description => 'I promise nothing except steak and whiskey.  Sam..will probably be Fetching and cook the steak and whiskey.', :location =>'South London', :outcome => 7, :start_date => DateTime.new(07/20/2015) 

alexsgroup.tournaments << alexstournament << alexstournament2 << alexstournament3
alexstournament.events << alstournyround1 << alstournyround2 << alstournyround3 << alstournyround4 << alstournyround5

# alexsgroup.users << Users.all
zoesgroup.users << alex << harry
harrysgroup.users << alex << zoe

# alexstournament << Users.all

alstournyround1.users << alex << harry << remes << zoe << grouse
alstournyround2.users << alex << harry << remes << zoe << grouse
alstournyround3.users << alex << harry << remes << zoe << grouse
alstournyround4.users << alex << harry << remes << zoe << grouse
alstournyround5.users << alex << harry << remes << zoe << grouse



# .....................