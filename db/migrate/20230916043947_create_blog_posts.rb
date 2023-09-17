class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.string :author_name
      t.string :author_email

      t.timestamps
    end
  end
end
