ActiveAdmin.register Photo do

  permit_params :title, :content, :user_id, :image

  controller do
    actions :all, :except => [:edit]
  end

  form do |f|
    f.inputs :title
    f.inputs :content
    f.input :image, as: :file
    f.actions
  end

  menu :parent => 'Photo'

end
