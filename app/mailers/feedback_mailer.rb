class FeedbackMailer < ApplicationMailer
  default from: 'noreply@blogapp.com'

  def new_feedback_notification(feedback)
    @feedback = feedback
    @blog_post = feedback.blog_post
    @author = feedback.blog_post.author_name

    mail(
      to: @blog_post.author_email,
      subject: "New feedback on your blog: #{@blog_post.title}"
    )
  end
end