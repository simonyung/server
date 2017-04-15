ActiveAdmin.register Pcomment do

  permit_params :photo, :user_id, :pcomment, :photo_id

  controller do
    actions :all, :except => [:edit]
  end

  form do |f|
    f.inputs :photo
    f.inputs :pcomment
    f.actions
  end


end
