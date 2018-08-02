class RemoveValidFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :valid, :datetime
  end
end
