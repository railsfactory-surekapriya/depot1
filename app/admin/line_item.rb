ActiveAdmin.register LineItem do

config.clear_action_items!
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


index do
=begin
    column :title, :sortable => :title do |product|
link_to product.title, [:edit_admin,product]
=end
    column :price
    column :quantity
    column :created_at
    
    
  end
end
