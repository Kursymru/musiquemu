ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :artist_id, :author_id, :title, :short_desc, :image_url, :youtube_video_id, :date_of_event, :place_of_event, :published_at,:is_published, :order
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
  column "Image" do |event|
    image_tag(event.image_url, :size=> '75x50')
  end
  column "Title", :title do |event|
    link_to event.title, [:admin, event], :sortable => :title
  end
  column :place_of_event, :sortable => :place_of_event
  column :date_of_event, :sortable => :date_of_event
  column :order

  column :created_at, :sortable => :created_at
  actions
  column :is_published, :sortable => :is_published
end

end
