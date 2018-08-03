class AddPublickeyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :publickey, :string
  end
end
