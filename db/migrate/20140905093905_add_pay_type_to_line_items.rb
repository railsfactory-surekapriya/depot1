class AddPayTypeToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :pay_type, :string
  end
end
