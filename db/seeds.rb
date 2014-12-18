# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: 'ToolTime'},{name: 'Health'},{name: 'Dating'},{name: 'Tech'},{name: 'Style'},{name: 'Finance'},{name: 'Hunting'},{name: 'Guns'}])

toolTime = Category.find_by(name: 'ToolTime')
toolTime.articles.create(title: "How to build a hovercraft", body: "Cut 2 pieces of wood into circles large enough to put a chair on.  Then cut a hole in each one, just large enough to fit a leafblower barrel. ...", video_url: "https://www.youtube.com/watch?v=bcyFSyglWpY")

guns = Category.find_by(name: 'Guns')
guns.articles.create(title: "FAIL!", body: "Exactly what it sounds like.", video_url: "https://www.youtube.com/watch?v=RHhmHBKc67s")

health = Category.find_by(name: 'Health')
health.articles.create(title: "Eat Health Foods", body: "Cookie Monster says it best.", video_url: "https://www.youtube.com/watch?v=KBMxpDbp51A")