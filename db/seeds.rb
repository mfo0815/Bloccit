include RandomData

5.times do
  user = User.create!(
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end

users = User.all

15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

 50.times do
   Post.create!(
     user:   users.sample,
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

 posts = Post.all

 20.times do
   SponsoredPost.create!(
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     price: rand(10...50)
   )
 end

 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "#{Post.count}"
 Post.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Post.count}"

 admin = User.create!(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)

  member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
)

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{SponsoredPost.count} sponsored posts created"



 50.times do
   Question.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 questions = Question.all

 puts "#{Question.count}"
 Question.find_or_create_by(title: "A unique title", body: "A unique body")
 puts "#{Question.count}"

 puts "Seed finished"
 puts "#{Question.count} questions created"
