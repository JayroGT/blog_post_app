require "rails_helper"

RSpec.describe FeedbackMailer, type: :mailer do
  describe "new_feedback_notification" do
    let(:blog_post) { BlogPost.create!(title: "Test", content: "Text", author_name: "Juan", author_email: "juan@example.com") }
    let(:feedback) { Feedback.create!(commenter_name: "Ana", commenter_email: "ana@example.com", content: "Buen post", blog_post: blog_post) }
    let(:mail) { FeedbackMailer.new_feedback_notification(feedback) }

    it "renders the headers" do
      expect(mail.subject).to eq("New feedback on your blog: #{blog_post.title}")
      expect(mail.to).to eq([blog_post.author_email])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match(feedback.content)
    end
  end
end
