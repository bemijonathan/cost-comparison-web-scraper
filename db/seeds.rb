# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Website.create([
	{name:"Inception", link:"www.inceptions.com"},
	{name:"Interstellar", link:"www.interstellar.com"},
	{name:"Dunkirk", link:"www.Dunkirk.com"}
])

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

Template.create([
    {
        content: "[{\"name\":\"\",\"width\":66,\"height\":100,\"background\":\"#f2f52e\",\"shadow\":{\"color\":\"#000000\",\"blur\":0,\"spread\":0,\"horizontal\":0,\"vertical\":0},\"border\":{\"color\":\"#000000\",\"left\":0,\"right\":0,\"top\":0,\"bottom\":0,\"style\":\"solid\"},\"borderRadius\":{\"left\":0,\"right\":0,\"top\":0,\"bottom\":0},\"padding\":{\"top\":0,\"right\":0,\"left\":0,\"bottom\":0}},{\"name\":\"CloseButton\",\"placeholder\":\"X\",\"bg\":\"#ffffff\",\"Position\":\"right\",\"borderRadius\":{\"left\":\"10\",\"right\":\"10\",\"top\":\"10\",\"bottom\":\"10\"},\"shadow\":{\"color\":\"#000000\",\"blur\":0,\"spread\":0,\"horizontal\":0,\"vertical\":0},\"padding\":{\"top\":0,\"right\":0,\"left\":0,\"bottom\":0},\"margin\":{\"top\":\"10\",\"right\":\"10\",\"left\":0,\"bottom\":0}},{\"name\":\"SpacerComponent\",\"height\":\"0\"},{\"name\":\"ImageComponent\",\"index\":1,\"type\":\"Image\",\"src\":\"/images/template_passport.png\",\"align\":\"center\",\"opacity\":0.9,\"width\":10,\"altText\":\"\",\"link\":\"\",\"shadow\":{\"color\":\"#000000\",\"blur\":0,\"spread\":0,\"horizontal\":0,\"vertical\":0},\"border\":{\"color\":\"#000000\",\"left\":0,\"right\":0,\"top\":0,\"bottom\":0,\"style\":\"solid\"},\"borderRadius\":{\"left\":0,\"right\":0,\"top\":0,\"bottom\":0}},{\"name\":\"MainButton\",\"width\":66,\"align\":\"center\",\"background\":\"#2448f4\",\"color\":\"#ffffff\",\"shadow\":{\"color\":\"#000000\",\"blur\":1,\"spread\":0,\"horizontal\":0,\"vertical\":0},\"border\":{\"color\":\"#000000\",\"left\":0,\"right\":0,\"top\":0,\"bottom\":0,\"style\":\"solid\"},\"borderRadius\":{\"left\":12,\"right\":12,\"top\":12,\"bottom\":12},\"padding\":{\"top\":10,\"right\":10,\"left\":10,\"bottom\":10},\"link\":\"#\",\"text\":\"CLick ME\"},{\"name\":\"SpacerComponent\",\"height\":40},{\"name\":\"FormComponent\",\"form\":{\"contents\":[{\"element\":\"inputComponent\",\"type\":\"email\",\"placeholder\":\"email\",\"bg\":\"#ffffff\",\"color\":\"#000000\",\"borderRadius\":{\"left\":0,\"right\":0,\"top\":0,\"bottom\":0},\"border\":{\"color\":\"#000000\",\"left\":1,\"right\":1,\"top\":1,\"bottom\":1,\"style\":\"solid\"}},{\"element\":\"inputComponent\",\"type\":\"email\",\"placeholder\":\"email\",\"bg\":\"#ffffff\",\"color\":\"#000000\",\"borderRadius\":{\"left\":0,\"right\":0,\"top\":0,\"bottom\":0},\"border\":{\"color\":\"#000000\",\"left\":1,\"right\":1,\"top\":1,\"bottom\":1,\"style\":\"solid\"}}]},\"button\":{\"element\":\"ButtonComponent\",\"color\":\"#000000\",\"placeholder\":\"email\",\"bg\":\"\",\"align\":\"\",\"borderRadius\":{\"left\":0,\"right\":0,\"top\":0,\"bottom\":0},\"border\":{\"color\":\"#000000\",\"left\":0,\"right\":0,\"top\":0,\"bottom\":0,\"style\":\"solid\"},\"shadow\":{\"color\":\"#000000\",\"blur\":0,\"spread\":0,\"horizontal\":0,\"vertical\":0},\"padding\":{\"top\":0,\"right\":0,\"left\":0,\"bottom\":0},\"margin\":{\"top\":0,\"right\":0,\"left\":0,\"bottom\":0}}},{\"name\":\"SpacerComponent\",\"height\":40}]" ,
        name:"TemplateOne"
    },
    {
        content:"",
        name:"TemplateTwo"
    }
])