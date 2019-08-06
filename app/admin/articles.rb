ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :intro, :body, :section_id, :is_published, :published_at, :order, :category_id, :artist_id, :author_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  column :id
  column :title, :sortable => :title
  column :category, :sortable => :category_id
  column :updated_at, :sortable => :updated_at
  column :created_at, :sortable => :created_at
  column :order
  column :is_published, :sortable => :is_published
  column :author, :sortable => :author_id
  actions

end
end
