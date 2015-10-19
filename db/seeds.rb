# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jwo = User.create first_name: "Jesse",
                  last_name: "Wolgamott",
                  username: "jwo",
                  email: "jesse@tiy.com",
                  password_digest: "12345678",
                  
