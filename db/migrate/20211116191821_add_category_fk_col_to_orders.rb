class AddCategoryFkColToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :category, foreign_key: true

  end
end
