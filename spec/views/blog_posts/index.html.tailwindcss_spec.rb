require 'rails_helper'

RSpec.describe "blog_posts/index", type: :view do
  it "displays a list of blog posts" do
    assign(:blog_posts, [
      BlogPost.create!(title: "Post 1", content: "Content 1", author_name: "Ana", author_email: "ana@example.com"),
      BlogPost.create!(title: "Post 2", content: "Content 2", author_name: "Luis", author_email: "luis@example.com")
    ])

    render

    expect(rendered).to match /Post 1/
    expect(rendered).to match /Post 2/
  end
end
