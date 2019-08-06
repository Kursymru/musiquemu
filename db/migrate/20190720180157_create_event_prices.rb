class CreateEventPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :event_prices do |t|
      t.integer :amount
      t.references :event, foreign_key: true
      t.references :event_category, foreign_key: true

      t.timestamps
    end
  end
end
