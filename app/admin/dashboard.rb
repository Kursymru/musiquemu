ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    section "Latest Articles", :priority => 1 do
        table_for Article.order("id desc").limit(20) do
          column :id
          column "Article Title", :title do |article|
            link_to article.title, [:admin, article]
          end
          column :category, :sortable => :category
          column "Linked artist", :artist, :sortable => :artist
          column :author, :sortable => :author
          column :created_at, :sortable => :created_at
    end
  end

  section "Latest Events", :priority => 1 do
      table_for Event.order("id desc").limit(20) do
        column :id
        column "Image" do |event|
          image_tag(event.image_url, :size=> '75x50')
        end
        column "Event Title", :title do |event|
          link_to event.title, [:admin, event]
        end
        column :author, :sortable => :author
        column :created_at, :sortable => :created_at
  end
end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
