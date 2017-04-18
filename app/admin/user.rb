ActiveAdmin.register User do
  actions :all, :except => [:new]
  controller do
    actions :all, :except => [:destroy]
  end

  permit_params :banned, :username, :email
  filter :username
  filter :email
  filter :created_at

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :banned
    column :created_at
    actions
  end

  form do |f|
    f.label :Ban_this_user
    f.check_box :banned
    f.actions
  end

end
