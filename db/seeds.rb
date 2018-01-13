# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

# Create topics
15.times do
  Topic.create!(
  name: RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
topics = Topic.all

 # Create Posts
 50.times do
 # #1
   Post.create!(
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 50.times do
   SponsoredPost.create!(
   topic: topics.sample,
   title: RandomData.random_sentence,
   body: RandomData.random_paragraph,
   price: RandomData.random_integer
   )
 end
 sponsored_posts = SponsoredPost.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 # Create questions
 100.times do
   Question.create!(
 # #4
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
   )
 end

 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
