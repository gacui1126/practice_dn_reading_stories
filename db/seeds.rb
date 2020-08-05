r = Random.new
category = ["Action", "Adventure", "Comedy", "Demons", "Doujinshi", "Drama", "Ecchi", "Fantasy",
     "Food", "Gender Bender", "Harem", "Historical", "Horror", "Isekai", "Josei", "Kids",
     "Magic", "Mecha", "Music", "Mystery", "One Shot", "Parody", "School Life", "Shoujo",
     "Shounen", "Space", "Sports", "Super Power", "Vampire", "Yaoi", "Yuri"]
category.each do |i|
    Category.create(category_name: i)
end

User.create!(username: "Son kute",
             email: "sonkut3@railstutorial.org",
             password:"123123",
             password_confirmation: "123123",
             role: 1,
             sex: true,
             admin: true
             )
10.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@railstutorial.org"
  User.create!(username: name,
  email: email,
  password:"123123",
  password_confirmation: "123123",
  role: 0,
  sex: true
  )
end

10.times do |n|
  name = Faker::Name.name
  email = "user-type2-#{n+55}@railstutorial.org"
  User.create!(username: name,
  email: email,
  password:"123123",
  password_confirmation: "123123",
  role: 2,
  sex: true
  )
end

20.times do |n|
  ui = r.rand(10..20)
  category_id = r.rand(1..category.count)
  views = r.rand(10000..90000)
  s = Story.new
  s.story_name = Faker::TvShows::Buffy.episode
  s.user_id = ui
  s.author = Faker::Name.name
  s.free = true
  s.price = 0
  s.img = "/assets/ (#{n+1}).jpg"
  s.category_id = category_id
  s.views = views
  s.save
end

30.times do |n|
  ui = r.rand(1..20)
  category_id = r.rand(1..category.count)
  views = r.rand(10000..90000)
  s = Story.new
  s.story_name = Faker::TvShows::Buffy.episode
  s.user_id = ui
  s.author = Faker::Name.name
  s.free = false
  s.price = 2000
  s.img = "/assets/ (#{n+1}).jpg"
  s.category_id = category_id
  s.views = views
  s.save
  store = Story.new
  store.story_name = Faker::TvShows::Buffy.episode
  store.user_id = ui
  store.author = Faker::Name.name
  store.free = false
  store.price = 2000
  store.img = "/assets/ (#{n+1}).jpg"
  store.category_id = category_id
  store.views = views
  store.save
end

Story.all.each do |i|
  num = 1
  50.times do |n|
      c = Chapter.new
      content = ""
      30.times do |j|
          content += Faker::Quotes::Shakespeare.romeo_and_juliet_quote
          content += Faker::Quotes::Shakespeare.king_richard_iii_quote
      end
      c.chapter_number = num
      c.chapter_name = Faker::TvShows::Simpsons.location
      c.story_id = i.id
      c.content = content
      c.save
      num = num+1
  end
end

50.times do |i|
  c = Action.new
  byebug
  c.user_id = r.rand(1...User.count)
  c.story_id = r.rand(1...Story.count)
  c.type = 0
  c.rating_number = r.rand(1..5)
  c.save
end

