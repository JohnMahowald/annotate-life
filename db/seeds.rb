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


aa_journal.chapters.create!(title: "Final Project")
aa_journal.chapters.create!(title: "First Weeks")
aa_journal.chapters.create!(title: "The Stack")
aa_journal.chapters.create!(title: "Rails")
aa_journal.chapters.create!(title: "Ruby")