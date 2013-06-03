User.destroy_all
Post.destroy_all
Comment.destroy_all

(1..10).each do |i|
  u = User.create(name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", blog_name: Faker::Lorem.sentence)
  (1..10).each do |j|
    p = u.posts.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraphs.join('\n'))
    (1..10).each do |k|
      p.comments.create(content: Faker::Lorem.paragraph)
    end
  end
end
