class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :amount
      t.integer :ease
      t.references :currency, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
