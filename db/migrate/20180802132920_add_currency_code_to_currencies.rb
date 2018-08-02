class AddCurrencyCodeToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :currency_code, :string
  end
end
