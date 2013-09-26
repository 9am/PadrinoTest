namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Post.create!(title: "Example Post",
                 content: "awefaqwergfaqerfqawefwef",
                 cover_url: "http://rubydoc.info/github/stympy/faker/master/frames",
                 background_url: "http://rubydoc.info/github/stympy/faker/master/frames",
                 swf_url: "http://rubydoc.info/github/stympy/faker/master/frames")
    10.times do |n|
      title = Faker::Lorem.word
      content = Faker::Lorem.paragraph
      cover_url = Faker::Internet.url
      background_url = Faker::Internet.url
      swf_url = Faker::Internet.url
      Post.create!(title: title,
                   content: content,
                   cover_url: cover_url,
                   background_url: background_url,
                   swf_url: swf_url)
    end

    posts = Post.all(limit: 6)
    50.times do
      name = Faker::Name.name
      content = Faker::Lorem.sentence(5)
      posts.each { |post| post.comments.create!(commenter: name, body: content) }
    end
  end
end