class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :currency
      t.float :gross
      t.float :discount
      t.float :net

      t.timestamps
    end
  end
end
