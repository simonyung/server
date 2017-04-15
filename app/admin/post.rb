ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :content, :user_id, :post_id

 controller do
  actions :all, :except => [:edit]
 end

 form do |f|
  f.inputs :title
  f.inputs :content
  f.actions
 end

end
