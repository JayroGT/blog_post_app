FactoryBot.define do
  factory :feedback do
    content { "Great post! Very informative." }
    commenter_name { "Jane Smith" }
    commenter_email { "jane@example.com" }
    association :blog_post
  end
end