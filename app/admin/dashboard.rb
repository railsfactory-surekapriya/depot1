ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
     # span class: "blank_slate" do
      #  span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
    #end



section "Recent Products" do
    table_for Product.order("created_at desc").limit(5) do
      column :title
      column :price
      column :created_at
    end
strong { link_to "View All Products", admin_products_path }
end

section " Recent Users" do
table_for User.order("created_at desc").limit(5) do
      column :name
      column :created_at
    end
  strong { link_to "View All users", admin_users_path }  
  end

section "Pending order" do

table_for LineItem.order("created_at desc").limit(10) do
#if :order_id == NULL 
      column :order_id 

      column "created_at" 
      column :product_id 
     

    end
    strong { link_to "View All orders", admin_orders_path }
  end










    # Here is an example of a simple dashboard with columns and panels.
    
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  # content
end
end
