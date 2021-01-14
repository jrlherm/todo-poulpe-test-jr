# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "----------------------"
puts "|   Seed Started 🚀   |"
puts "----------------------"

puts ""
puts 'Deleting all comments...'
  Comment.destroy_all #if Rails.env.development?
puts 'Deleting all tasks...'
  Task.destroy_all #if Rails.env.development?
puts 'Deleting all users...'
  User.destroy_all #if Rails.env.development?

puts ""
puts "👨‍👨‍👦 Creating 3 users..."
  puts "Account 1/3 : test1@test.fr | azerty"
  jr = User.new(email: "test1@test.fr", password: "azerty")
  jr.save!
  puts "--> Account created"
puts "Account 2/3 : test2@test.fr | azerty"
  test1 = User.new(email: "test2@test.fr", password: "azerty")
  test1.save!
  puts "--> Account created"
puts "Account 3/3 : test3@test.fr | azerty"
  test2 = User.new(email: "test3@test.fr", password: "azerty")
  test2.save!
  puts "--> Account created"

puts ""
puts "📕 Creating 5 tasks per for users 1 & 2..."
puts "Creating tasks for user 1..."
  task1 = Task.new(title: 'Drag and drop me',
    description: "Hello ! You can go back to index and drag me where you want 🙃",
    priority: 4,
    deadline: "24/12/2020",
    user_id: 1)
  task1.save!
  puts "--> Task added 1/5"
  task2 = Task.new(title: 'Do your flashcards',
    description: "It's really important to do it until you really knows it !",
    priority: 2,
    deadline: "24/03/2021",
    user_id: 1)
  task2.save!
  puts "--> Task added 2/5"
  task3 = Task.new(title: 'Do your laundry',
    description: "I have no socks anymore. Do your laundry please",
    user_id: 1)
  task3.save!
  puts "--> Task added 3/5"
  task4 = Task.new(title: 'Call Grandma',
    description: "I have no socks anymore. Do your laundry please",
    user_id: 1,
    finished: true)
  task4.save!
  puts "--> Task added 4/5"
  task5 = Task.new(title: 'Teach Akunamata to your parrot',
    description: "It could be cool. Don't you think so ? ",
    user_id: 1,
    finished: true)
  task5.save!
  puts "--> Task added 5/5"


puts ""
puts "Creating tasks for user 2..."
  task1 = Task.new(title: 'You can Drag and drop me',
    description: "Hello ! You can go back to index and drag me where you want 🙃",
    priority: 1,
    deadline: "24/02/2020",
    user_id: 2)
  task1.save!
  puts "--> Task added 1/5"
  task2 = Task.new(title: 'Do your flashcards guy !!',
    description: "It's really important to do it !",
    priority: 3,
    deadline: "24/01/2021",
    user_id: 2)
  task2.save!
  puts "--> Task added 2/5"
  task3 = Task.new(title: 'No socks. Do your laundry',
    description: "I have no socks anymore. Do your laundry please",
    user_id: 2)
  task3.save!
  puts "--> Task added 3/5"
  task4 = Task.new(title: 'Call your grandpa',
    description: "Call your grandma please!",
    user_id: 2,
    finished: true)
  task4.save!
  puts "--> Task added 4/5"
  task5 = Task.new(title: 'Teach Akunamata to your parrot',
    description: "It could be cool. Don't you think so ? ",
    user_id: 2,
    finished: true)
  task5.save!
  puts "--> Task added 5/5"

puts ""
puts "💬 Creating comments..."
puts "Creating comments for user 1..."
  comment1 = Comment.new(
    content: "Bats frighten me. It's time my enemies shared my dread. No guns, no killing. Bruce Wayne, eccentric billionaire. Someone like you. Someone who'll rattle the cages. This isn't a car. I can't do that as Bruce Wayne... as a man. I'm flesh and blood.",
    task_id: 1
  )
  comment1.save!
  puts "--> Comment 1/5 created"
  comment2 = Comment.new(
    content: "Hero can be anyone. Even a man knowing something as simple and reassuring as putting a coat around a young boy shoulders to let him know the world hadn't ended.",
    task_id: 1
  )
  comment2.save!
  puts "--> Comment 2/5 created"
  comment3 = Comment.new(
    content: "I seek the means to fight injustice. To turn fear against those who prey on the fearful. No guns, no killing. This isn't a car. It's ends here.",
    task_id: 2
  )
  comment3.save!
  puts "--> Comment 3/5 created"
  comment4 = Comment.new(
    content: "I'm Batman It's ends here. I'm Batman Someone like you. Someone who'll rattle the cages. I will go back to Gotham and I will fight men Iike this but I will not become an executioner.",
    task_id: 2
  )
  comment4.save!
  puts "--> Comment 4/5 created"
  comment5 = Comment.new(
    content: " Bats frighten me. It's time my enemies shared my dread. I can't do that as Bruce Wayne... as a man. I'm flesh and blood. I can be ignored, destroyed. But as a symbol, I can be incorruptible, I can be everlasting.",
    task_id: 3
  )
  comment5.save!
  puts "--> Comment 5/5 created"

puts ""
puts "Creating comments for user 2..."
  comment1 = Comment.new(
    content: "I'm Batman Swear to me! Well, you see... I'm buying this hotel and setting some new rules about the pool area.",
    task_id: 6
  )
  comment1.save!
  puts "--> Comment 1/5 created"
  comment2 = Comment.new(
    content: "Bruce Wayne, eccentric billionaire. It was a dog. It was a big dog. Accomplice? I'm gonna tell them the whole thing was your idea.",
    task_id: 6
  )
  comment2.save!
  puts "--> Comment 2/5 created"
  comment3 = Comment.new(
    content: "No guns, no killing. I seek the means to fight injustice. To turn fear against those who prey on the fearful.",
    task_id: 7
  )
  comment3.save!
  puts "--> Comment 3/5 created"
  comment4 = Comment.new(
    content: "It's ends here. It was a dog. It was a big dog. The first time I stole so that I wouldn't starve, yes. I lost many assumptions about the simple nature of right and wrong. And when I traveled I learned the fear before a crime and the thrill of success. But I never became one of them.",
    task_id: 7
  )
  comment4.save!
  puts "--> Comment 4/5 created"
  comment5 = Comment.new(
    content: "Accomplice? I'm gonna tell them the whole thing was your idea. Someone like you. Someone who'll rattle the cages. My anger outweights my guilt.",
    task_id: 8
  )
  comment5.save!
  puts "--> Comment 5/5 created"

puts ""
puts ""
puts "Seed finished"
puts "-------------"
puts ""
puts "You can connect with those accounts (or create a new one) 🙂"
puts "- Account 1 : test1@test.fr | azerty"
puts "- Account 2 : test2@test.fr | azerty"
puts "- Account 3 (empty account) : test3@test.fr | azerty"
puts ""
puts "I hope you'll have a good time testing my app ! 🤞"
