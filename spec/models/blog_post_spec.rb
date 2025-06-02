require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      blog_post = build(:blog_post)
      blog_post.content = "Contenido válido"
      expect(blog_post).to be_valid
    end


    it 'is not valid without a title' do
      blog_post = build(:blog_post, title: nil)
      expect(blog_post).not_to be_valid
    end

    it 'is not valid without content' do
      blog_post = build(:blog_post)
      blog_post.content = nil
      expect(blog_post).not_to be_valid

      blog_post.content = ActionText::Content.new('') # contenido vacío
      expect(blog_post).not_to be_valid
    end


    it 'is not valid without author_name' do
      blog_post = build(:blog_post, author_name: nil)
      expect(blog_post).not_to be_valid
    end

    it 'is not valid without author_email' do
      blog_post = build(:blog_post, author_email: nil)
      expect(blog_post).not_to be_valid
    end

    it 'is not valid with invalid email format' do
      blog_post = build(:blog_post, author_email: 'invalid-email')
      expect(blog_post).not_to be_valid
    end
  end

  describe 'associations' do
    it 'has many feedbacks' do
      association = described_class.reflect_on_association(:feedbacks)
      expect(association.macro).to eq :has_many
    end

    it 'destroys associated feedbacks when deleted' do
      blog_post = create(:blog_post)
      create(:feedback, blog_post: blog_post)

      expect { blog_post.destroy }.to change { Feedback.count }.by(-1)
    end
  end
end