class Order < ApplicationRecord

    belongs_to(
      :category,
      class_name: 'Category',
      foreign_key: 'category_id',
      inverse_of: :orders,
      optional: true
    )
    validates :currency ,presence: true,allow_blank:false
    validates :gross ,presence: true,allow_blank:false
    validates :gross, numericality:{ greater_than_or_equal_to: :discount}

    enum currency: {
        TL:1,
        USD:2,
        EUR:3
    }
    after_initialize :init


  
    
    def discount=(discount)
      if(discount.nil?)
        discount = 0
      end
      super(discount)
    end


    private
      def init
        if self.new_record? && self.discount.nil?
          self.discount = 0
      end
    end
    
end
