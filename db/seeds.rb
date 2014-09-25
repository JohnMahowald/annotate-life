# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


guest = User.create!(email: "john@me.com", password: "johnjohn")
User.create!(email: "tim@me.com", password: "timtim")
User.create!(email: "jared@me.com", password: "jaredjared")


aa_journal = guest.journals.create!(
  title: "App Academy", 
  description: "My adventures in learning code")
travel_journal = guest.journals.create!(
  title: "Traveling",
  description: "A collection of stories from the road")
career_journal = guest.journals.create!(
  title: "Career",
  description: "Philosopher becomes a developer")


final_project_chapter = aa_journal.chapters.create!(title: "Final Project")
aa_journal.chapters.create!(title: "First Weeks")
aa_journal.chapters.create!(title: "The Stack")
aa_journal.chapters.create!(title: "Rails")
aa_journal.chapters.create!(title: "Ruby")

final_project_chapter.stories.create!(title: "Planning", text: "When first
planning a project, it helps to have a roadmap. And that is when I knew
that it was going to be challenging.", 
img_url: "http://blog.homeaway.co.uk/wp-content/uploads/2012/06/cala-luna.jpg")

final_project_chapter.stories.create!(title: "Design", text: "It isn't always
clear what is the best design. With so many websites out there, there are many
competing design perspectives.", 
img_url: "http://www.wallpapersonly.net/wallpapers/peak-wilderness-washington-mountains-1024x768.jpg")

final_project_chapter.stories.create!(title: "Composite Views", text: "There is
something in my nature that looks for challenges and tries to confront them 
head on. Its no woder that I have a project with composite views...",
img_url: "http://images4.fanpop.com/image/photos/19900000/SunSet-sunsets-and-sunrises-19955133-1920-1080.jpg")

final_project_chapter.stories.create!(title: "Implimeting", text: "I've always
been the type of person that enjoys making soemthign come to pass. While
intimidating, this has been a fun project to work on",
img_url: "http://funlava.com/wp-content/uploads/2013/08/sunset.jpg")