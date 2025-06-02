RSpec.describe "blog_posts/new.html.erb", type: :view do
  it "displays the new blog post form" do
    assign(:blog_post, BlogPost.new)
    render
    expect(rendered).to match include("New Blog Post")
    expect(rendered).to match include("Save")
  end
end
