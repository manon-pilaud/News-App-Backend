# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Mandy")

Category.create(name:"West Africa",type_name:"Region")
Category.create(name:"Middle East",type_name:"Region")

Category.create(name:"United States",type_name:"Country")
Category.create(name:"Egypt",type_name:"Country")

Category.create(name:"Cybersecurity",type_name:"Topic")
Category.create(name:"Terrorism",type_name:"Topic")
Category.create(name:"World Economy",type_name:"Topic")
Category.create(name:"Trump",type_name:"Topic")

UserCategory.create(user_id:1, category_id:1)
UserCategory.create(user_id:1, category_id:4)
UserCategory.create(user_id:1, category_id:7)
UserCategory.create(user_id:1, category_id:5)
