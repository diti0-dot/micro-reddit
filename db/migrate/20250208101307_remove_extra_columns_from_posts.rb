class RemoveExtraColumnsFromPosts < ActiveRecord::Migration[8.0]
  def change
    remove_column :posts, :post_type, :string
    remove_column :posts, :upvotes, :integer
    remove_column :posts, :downvotes, :integer
    remove_column :posts, :comment_count, :integer
  end
end
