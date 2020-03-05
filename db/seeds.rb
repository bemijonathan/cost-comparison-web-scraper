# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Website.create([
# 	{name:"Inception", link:"www.inceptions.com"},
# 	{name:"Interstellar", link:"www.interstellar.com"},
# 	{name:"Dunkirk", link:"www.Dunkirk.com"}
# ])

Campaign.create([
	{
      preview: "images/campaign-dummy.png",
      # last_edited: "November 15, 2019, 10:11 AM",
      site: "PlanetX.com",
  	},
  	{
      preview: "images/campaign-dummy2.png",
      # last_edited: "November 15, 2019, 10:11 AM",
      site: "PlanetX.com",
    }
])