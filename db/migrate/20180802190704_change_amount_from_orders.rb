class ChangeAmountFromOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :amount , :float
  end
end
