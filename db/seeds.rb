# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


guest = User.create!(email: "john.mahowald@gmail.com", password: "johnjohn", fname: 'John', lname: 'Mahowald')
User.create!(email: "tim@me.com", password: "timtim", fname: 'Tim')
User.create!(email: "jared@me.com", password: "jaredjared", fname: 'Jared')


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

final_project_chapter.stories.create!(title: "Planning", text: "When first planning a project, it helps to have a roadmap. And that is when I knew that it was going to be challenging.",
img_url: "http://media-cache-ak0.pinimg.com/736x/c4/69/db/c469dbb0d703f2d86664abdc43913e0f.jpg")

final_project_chapter.stories.create!(title: "Design", text: "It isn't always clear what is the best design. With so many websites out there, there are many competing design perspectives.",
img_url: "http://media-cache-ec0.pinimg.com/736x/7e/d9/db/7ed9db24b050ebbe66be9461beba73b8.jpg")

final_project_chapter.stories.create!(title: "Composite Views", text: "There is something in my nature that looks for challenges and tries to confront them head on. Its no woder that I have a project with composite views...",
img_url: "http://media-cache-ak0.pinimg.com/736x/88/bf/38/88bf3817761e9b4405db691f3e734409.jpg")

final_project_chapter.stories.create!(title: "Implementing", text: "I've always been the type of person that enjoys making something come to pass. While intimidating, this has been a fun project to work on",
img_url: "http://media-cache-ec0.pinimg.com/736x/d2/57/64/d25764e65caa564ad4b58d4203133081.jpg")

Background.create(img_url: 'https://farm3.staticflickr.com/2943/15146540179_39312c7edd_k.jpg')
Background.create(img_url: 'https://farm6.staticflickr.com/5557/15214857592_9707939a54_o.jpg')
Background.create(img_url: 'https://farm4.staticflickr.com/3866/15391652342_8e327ad6cf_k.jpg')
Background.create(img_url: 'https://farm4.staticflickr.com/3711/9169338154_ccf5aa74ef_h.jpg')
Background.create(img_url: 'https://farm8.staticflickr.com/7365/9770925031_1dfce38eea_b.jpg')
Background.create(img_url: 'https://farm2.staticflickr.com/1178/1350845804_d0984de002_b.jpg')
Background.create(img_url: 'https://farm9.staticflickr.com/8041/7981860626_c71f94a72b_b.jpg')
Background.create(img_url: 'https://farm9.staticflickr.com/8323/8079071366_f6c7d5eafa_b.jpg')
Background.create(img_url: 'https://farm4.staticflickr.com/3908/14850610665_20552e830a_b.jpg')