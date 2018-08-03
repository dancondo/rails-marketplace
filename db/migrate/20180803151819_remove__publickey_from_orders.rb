class RemovePublickeyFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :publickey, :string
  end
end
