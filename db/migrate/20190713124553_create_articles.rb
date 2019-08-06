class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :section_id
      t.text :intro
      t.text :body
      t.datetime :published_at
      t.integer :order
      t.boolean :is_published
      t.references :category, foreign_key: true
      t.references :artist, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
