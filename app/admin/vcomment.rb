ActiveAdmin.register Vcomment do

  permit_params :video, :user_id, :vcomment, :video_id

  controller do
    actions :all, :except => [:edit]
  end

  form do |f|
    f.inputs :video
    f.inputs :vcomment
    f.actions
  end


end
