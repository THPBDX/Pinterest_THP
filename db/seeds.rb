require 'faker'
Comment.destroy_all
Pin.destroy_all

User.destroy_all


10.times do |index|
  user1 = User.create!(name: Faker::StrangerThings.character)
  pin1 = Pin.create!(url: Faker::Internet.url,user:user1)
  comment1 = Comment.create!(body: Faker::Hacker.say_something_smart,user:user1,pin:pin1)
end