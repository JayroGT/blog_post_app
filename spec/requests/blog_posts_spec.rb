require 'rails_helper'

RSpec.describe "BlogPosts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/blog_posts"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      blog_post = BlogPost.create!(title: "Test", author_name: "Test", author_email: "test@example.com", content: "Content")
      get "/blog_posts/#{blog_post.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/blog_posts/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      blog_post = BlogPost.create!(title: "Test", author_name: "Test", author_email: "test@example.com", content: "Content")
      get "/blog_posts/#{blog_post.id}/edit"
      expect(response).to have_http_status(:success)
    end
  end
end
