class AddNameToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :name, :string
  end
end
