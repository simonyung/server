ActiveAdmin.register Comment do

permit_params :comment, :user_id, :post_id

  controller do
    actions :all, :except => [:edit]
  end

end
