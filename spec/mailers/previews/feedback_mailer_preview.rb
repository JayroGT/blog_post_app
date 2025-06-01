# Preview all emails at http://localhost:3000/rails/mailers/feedback_mailer_mailer
class FeedbackMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback_mailer_mailer/new_feedback_notification
  def new_feedback_notification
    FeedbackMailer.new_feedback_notification
  end

end
