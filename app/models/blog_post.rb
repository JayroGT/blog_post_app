class BlogPost < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  has_rich_text :content

  validates :title, presence: true
  validates :author_name, presence: true
  validates :author_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :content_presence

  private

  def content_presence
    errors.add(:content, "can't be blank") unless content.body.present?
  end
end
