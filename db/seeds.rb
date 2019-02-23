# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Mandy")

Country.create(name:"France",code:"fr")
Country.create(name:"Russia", code:"ru")

Country.create(name:"United States",code:"us")
Country.create(name:"Egypt",code:'eg')

Country.create(name:"China",code:'cn')
Country.create(name:"Kenya",code:'')
Country.create(name:"Jordan",code:'')
Country.create(name:"Venezuela",code:'ve')
#-------
Country.create(name:"United Arab Emirates",code:"ae")
Country.create(name:"Argentina", code:"ar")
Country.create(name:"Austria",code:"at")
Country.create(name:"Australia",code:'au')
Country.create(name:"Belgium",code:'be')
Country.create(name:"Bulgaria",code:'bg')
Country.create(name:"Brazil",code:'br')
Country.create(name:"Canada",code:'ca')
#-------
Country.create(name:"Switzerlands",code:"ch")
Country.create(name:"Colombia", code:"co")
Country.create(name:"Cuba",code:"cu")
Country.create(name:"Czech Republic",code:'cz')
Country.create(name:"Germany",code:'de')
Country.create(name:"United Kingdom",code:'gb')
Country.create(name:"Greece",code:'gr')
Country.create(name:"Hungary",code:'hu')
#-------
Country.create(name:"Indonesia",code:"id")
Country.create(name:"Ireland", code:"ie")
Country.create(name:"Israel",code:"il")
Country.create(name:"India",code:'in')
Country.create(name:"Italy",code:'it')
Country.create(name:"Japan",code:'jp')
Country.create(name:"South Korea",code:'kr')
Country.create(name:"Lithuania",code:'lt')
#--------
Country.create(name:"Latvia",code:"lv")
Country.create(name:"Morocco", code:"ma")
Country.create(name:"Mexico",code:"mx")
Country.create(name:"Malaysia",code:'my')
Country.create(name:"Nigeria",code:'ng')
Country.create(name:"Netherlands",code:'nl')
Country.create(name:"Norway",code:'no')
Country.create(name:"New Zealand",code:'nz')
Country.create(name:"Philippines",code:"ph")
Country.create(name:"Poland", code:"pl")
Country.create(name:"Portugal",code:"pt")
Country.create(name:"Romania",code:'ro')
Country.create(name:"Serbia",code:'rs')
Country.create(name:"Sweden",code:'se')
Country.create(name:"Singapore",code:'sg')
#---
Country.create(name:"Slovenia",code:"si")
Country.create(name:"Slovakia",code:'sk')
Country.create(name:"Thailand",code:'th')
Country.create(name:"Turkey",code:'tr')
Country.create(name:"Taiwan",code:'tw')
Country.create(name:"Ukraine",code:'ua')
Country.create(name:"South Africa",code:"za")


UserCountry.create(user_id:1, country_id:1)
UserCountry.create(user_id:1, country_id:4)
UserCountry.create(user_id:1, country_id:7)
UserCountry.create(user_id:1, country_id:5)
