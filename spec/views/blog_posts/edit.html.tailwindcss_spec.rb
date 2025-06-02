require 'rails_helper'

RSpec.describe "blog_posts/edit", type: :view do
  it "displays the edit form" do
    assign(:blog_post, BlogPost.create!(
      title: "Edit title",
      content: "Edit content",
      author_name: "Edit",
      author_email: "edit@example.com"
    ))

    render

    expect(rendered).to have_selector("form")
    expect(rendered).to match /Edit title/
  end
end
