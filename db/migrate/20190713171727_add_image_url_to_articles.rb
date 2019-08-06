class AddImageUrlToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image_url, :string
    add_column :articles, :youtube_video_id, :string
  end
end
