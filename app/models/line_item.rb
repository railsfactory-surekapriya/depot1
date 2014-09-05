class LineItem < ActiveRecord::Base
belongs_to :product
belongs_to :order
belongs_to :user

def total_price
  product.price * quantity
end
  

#after_create :add_pay_type
#def add_pay_type
# self.update_attributes(:pay_type)
#end
end
