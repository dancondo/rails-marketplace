class AddValidToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :valid, :datetime
  end
end
