# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Painting.create [
  {
    artist: "Rothco",
    museum: "luvre",
    title: "my love",
   	user_id: "1",
   	image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=40023522" 
  },

  {
    artist: "new artist",
    museum: "new museum",
    title: "new",
    user_id: "1",
    image: "http://www.hercampus.com/sites/default/files/2014/10/05/Sweet-puppy-sitting.jpg" 
  },

  {
    artist: "Picasso",
    museum: "New York",
    title: "nothing",
   	user_id: "2",
   	image: "http://www.pablopicasso.org/images/paintings/the-weeping-woman.jpg" 
  }]
