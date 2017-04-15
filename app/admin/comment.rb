ActiveAdmin.register Comment do

permit_params :comment, :user_id, :post_id, :post

  controller do
    actions :all, :except => [:edit]
  end


form do |f|
  f.inputs :post
  f.inputs :comment
  f.actions
end
end
