class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :short_desc
      t.string :image_url
      t.string :youtube_video_id
      t.date :date_of_event
      t.string :place_of_event
      t.datetime :published_at
      t.integer :order
      t.boolean :is_published
      t.references :artist, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
