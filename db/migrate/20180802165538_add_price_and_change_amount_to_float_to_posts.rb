class AddPriceAndChangeAmountToFloatToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :price, :integer
    change_column :posts, :amount, :float
  end
end
