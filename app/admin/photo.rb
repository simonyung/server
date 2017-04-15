ActiveAdmin.register Photo do

  controller do
    actions :all, :except => [:edit]
  end

end
