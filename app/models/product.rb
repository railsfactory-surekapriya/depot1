class Product < ActiveRecord::Base
has_many :line_items
belongs_to :order
has_attached_file :image

before_destroy :ensure_not_referenced_by_any_line_item

validates :title, :description, :image, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }



def self.latest
  Product.order(:updated_at).last
end

#...

private

# ensure that there are no line items referencing this product
 def ensure_not_referenced_by_any_line_item
  if line_items.empty?
    return true
  else
    errors.add(:base, 'Line Items present')
    return false
  end
 end
end

