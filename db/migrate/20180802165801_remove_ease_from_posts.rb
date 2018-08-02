class RemoveEaseFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :ease, :string
  end
end
