class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.string :post_type
      t.integer :upvotes
      t.integer :downvotes
      t.integer :comment_count

      t.timestamps
    end
  end
end
