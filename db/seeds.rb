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
                  password: "12345678",
                  title: "Rails God",
                  information: "Scrum project startup freemium supply chain social proof iPhone responsive web design backing focus seed money user experience. Analytics success graphical user interface alpha growth hacking investor mass market backing freemium funding business-to-consumer monetization. Founders incubator iteration interaction design bandwidth branding twitter analytics low hanging fruit value proposition. Pitch supply chain low hanging fruit startup leverage stock business plan scrum project A/B testing twitter stealth."


musik = Subscription.create name: "Musik", stripe_id: "musik"



                  m = User.create first_name: "Marko", last_name: "Clement", username: "mko", email: "marko@example.com", password: "12345678"
                  l = User.create first_name: "Linda", last_name: "Mars", username: "mars1", email: "linda@example.com", password: "12345678"
                  j = User.create first_name: "Jason", last_name: "Borne", username: "jb", email: "jason@example.com", password: "12345678"
                  s = User.create first_name: "Smith", last_name: "Klein", username: "ksmith", email: "smith@example.com", password: "12345678"

                  m.follow(l)
                  m.follow(j)
                  j.follow(m)
                  j.follow(s)
                  s.follow(l)
                  l.follow(s)
                  jwo.follow(l)
                  jwo.follow(m)
                  jwo.follow(s)
                  l.follow(jwo)
                  m.follow(jwo)
                  s.follow(jwo)
