FactoryBot.define do
  factory :blog_post do
    title { "Sample Blog Post" }
    author_name { "John Doe" }
    author_email { "john@example.com" }

    after(:build) do |blog_post|
      blog_post.content = "Contenido de prueba para rich text"
    end
  end
end
