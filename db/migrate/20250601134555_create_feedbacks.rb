class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.string :commenter_name
      t.string :commenter_email
      t.references :blog_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
