ActiveAdmin.register Order do
config.clear_action_items!
config.per_page = 5
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
   #permit_params do
  #  permitted = [:permitted, :attributes]
   #  permitted << :line_item if resource.something?
  #   permitted
  # end
index do 
column :name
column :pay_type
column :created_at
actions defaults: false do |order|
link_to 'show' , admin_order_path(order)
end

end


end

