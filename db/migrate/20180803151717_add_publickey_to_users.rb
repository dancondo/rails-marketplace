class AddPublickeyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :publickey, :string
  end
end
