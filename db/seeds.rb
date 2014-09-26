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
img_url: "http://media-cache-ak0.pinimg.com/736x/c4/69/db/c469dbb0d703f2d86664abdc43913e0f.jpg")

final_project_chapter.stories.create!(title: "Design", text: "It isn't always
clear what is the best design. With so many websites out there, there are many
competing design perspectives.",
img_url: "http://media-cache-ec0.pinimg.com/736x/7e/d9/db/7ed9db24b050ebbe66be9461beba73b8.jpg")

final_project_chapter.stories.create!(title: "Composite Views", text: "There is
something in my nature that looks for challenges and tries to confront them
head on. Its no woder that I have a project with composite views...",
img_url: "http://media-cache-ak0.pinimg.com/736x/88/bf/38/88bf3817761e9b4405db691f3e734409.jpg")

final_project_chapter.stories.create!(title: "Implementing", text: "I've always
been the type of person that enjoys making something come to pass. While
intimidating, this has been a fun project to work on",
img_url: "http://media-cache-ec0.pinimg.com/736x/d2/57/64/d25764e65caa564ad4b58d4203133081.jpg")