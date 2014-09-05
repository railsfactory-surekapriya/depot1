class AddUserToLineItem < ActiveRecord::Migration
  def change
add_reference :line_items, :users, index: true
  end
end
