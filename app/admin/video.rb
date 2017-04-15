ActiveAdmin.register Video do

  permit_params :title, :description, :user_id, :video_id

  controller do
    actions :all, :except => [:edit]
  end


end
