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

austin_test = Subscription.create name: "Austin Test", stripe_id: "austin_test", amount: 350
