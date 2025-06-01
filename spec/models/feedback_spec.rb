require 'rails_helper'

RSpec.describe Feedback, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      feedback = build(:feedback)
      expect(feedback).to be_valid
    end

    it 'is not valid without content' do
      feedback = build(:feedback, content: nil)
      expect(feedback).not_to be_valid
    end

    it 'is not valid without commenter_name' do
      feedback = build(:feedback, commenter_name: nil)
      expect(feedback).not_to be_valid
    end

    it 'is not valid without commenter_email' do
      feedback = build(:feedback, commenter_email: nil)
      expect(feedback).not_to be_valid
    end

    it 'is not valid with invalid email format' do
      feedback = build(:feedback, commenter_email: 'invalid-email')
      expect(feedback).not_to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to blog_post' do
      association = described_class.reflect_on_association(:blog_post)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe 'callbacks' do
    it 'sends notification email after creation' do
      blog_post = create(:blog_post)
      
      expect {
        create(:feedback, blog_post: blog_post)
      }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end