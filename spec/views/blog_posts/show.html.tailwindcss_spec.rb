RSpec.describe "blog_posts/show.html.erb", type: :view do
  it "displays the blog title and content" do
    blog_post = BlogPost.create!(title: "Title", author_name: "Author", author_email: "email@example.com", content: "Content")
    assign(:blog_post, blog_post)
    assign(:feedback, Feedback.new)

    render
    expect(rendered).to match /Title/
    expect(rendered).to match /Content/
  end
end
