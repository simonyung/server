ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    section "Recent Posts" do
      table_for Post.order("created_at desc").limit(10) do
        column :id
        column :title
        column :content
        column :user
        column :created_at
      end
    end

    section "Recent Posts comment" do
      table_for Comment.order("created_at desc").limit(10) do
        column :id
        column :comment
        column :user
        column :created_at
      end
    end

    section "Recent Photos" do
      table_for Photo.order("created_at desc").limit(10) do
        column :id
        column :title
        column :content
        column :user
        column :created_at
      end
    end

    section "Recent Photos comment" do
      table_for Pcomment.order("created_at desc").limit(10) do
        column :id
        column :pcomment
        column :user
        column :created_at
      end
    end

    section "Recent Videos" do
      table_for Video.order("created_at desc").limit(10) do
        column :id
        column :title
        column :description
        column :user
        column :created_at
      end
    end

    section "Recent Videos comment" do
      table_for Vcomment.order("created_at desc").limit(10) do
        column :id
        column :vcomment
        column :user
        column :created_at
      end
    end

  end
end
