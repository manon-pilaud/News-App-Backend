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

UserCountry.create(user_id:1, country_id:1)
UserCountry.create(user_id:1, country_id:4)
UserCountry.create(user_id:1, country_id:7)
UserCountry.create(user_id:1, country_id:5)


#ae ar at au be bg br ca ch cn co cu cz de eg fr gb gr hk hu id ie il in it jp kr lt lv ma mx my ng nl no nz ph pl pt ro rs ru sa se sg si sk th tr tw ua us ve za
