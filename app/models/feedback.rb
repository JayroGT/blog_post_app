class Feedback < ApplicationRecord
  belongs_to :blog_post

  validates :content, :commenter_name, :commenter_email, presence: true
  validates :commenter_email, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create :send_notification_email

  private

  def send_notification_email
    FeedbackMailer.new_feedback_notification(self).deliver_now
  end
end