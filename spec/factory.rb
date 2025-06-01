FactoryBot.define do
  factory :blog_post do
    title { "Sample Blog Post" }
    content { "This is a sample blog post content that provides valuable information." }
    author_name { "John Doe" }
    author_email { "john@example.com" }
  end

  factory :feedback do
    content { "Great post! Very informative." }
    commenter_name { "Jane Smith" }
    commenter_email { "jane@example.com" }
    association :blog_post
  end
end