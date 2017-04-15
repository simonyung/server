ActiveAdmin.register Video do

  permit_params :title, :description, :user_id, :video_id, :video

  controller do
    actions :all, :except => [:edit]
  end


  form do |f|
    f.inputs :title
    f.inputs :description
    f.input :video, as: :file
    f.actions
  end

end
