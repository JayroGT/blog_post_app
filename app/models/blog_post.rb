class BlogPost < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  has_rich_text :content

  validates :title, :content, :author_name, :author_email, presence: true
  validates :author_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :content_presence

  private

  def content_presence
  errors.add(:content, "can't be blank") if content.blank? || content.body.to_plain_text.strip.blank?
  end
end
