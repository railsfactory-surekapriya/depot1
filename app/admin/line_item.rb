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
    column :id
    column :quantity
    column :created_at
    column :updated_at
actions defaults: false do |line_item|
link_to 'show' , admin_line_item_path(line_item)
end
end
end
