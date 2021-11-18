class Category < ApplicationRecord
    has_many(
        :orders,
        class_name: 'Order',
        foreign_key: 'category_id',
        inverse_of: :category,
        dependent: :destroy
    ) 
    validates :name, presence: true,uniqueness: true

end
