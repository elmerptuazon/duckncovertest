class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :blog_post, null: false, foreign_key: true
      t.text :user

      t.timestamps
    end
  end
end
