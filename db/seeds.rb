# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
# require 'random_data'
=======
>>>>>>> bloccit-checkpoint22
# include RandomData
require 'random_data'

15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all


 50.times do
   Post.create!(
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

<<<<<<< HEAD
=======
 5.times do
   SponsoredPost.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_dollar
   )
 end
 sponsored_posts = SponsoredPost.all

>>>>>>> bloccit-checkpoint22
 # 100.times do
 #    Question.create!(
 #    title: RandomData.random_sentence,
 #    body: RandomData.random_paragraph,
 #    resolved: false
 #    )
 #  end
<<<<<<< HEAD


 # puts "#{Post.count}"
 Post.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Post.count}"
=======
>>>>>>> bloccit-checkpoint22

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 # puts "#{Question.count} questions created"
 puts "#{Topic.count} topics created"
<<<<<<< HEAD
=======
 puts "#{SponsoredPost.count} topics created"
>>>>>>> bloccit-checkpoint22
