class History < ActiveRecord::Base 
 has_many :line_items
 belongs_to :user
end
