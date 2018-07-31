class RemoveCoinFromCurrencies < ActiveRecord::Migration[5.2]
  def change
    remove_column :currencies, :coin, :string
  end
end
