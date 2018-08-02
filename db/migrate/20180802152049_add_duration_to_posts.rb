class AddDurationToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :duration, :datetime
  end
end
