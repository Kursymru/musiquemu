class CreateJoinTableEventPriceEvent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :event_prices, :events do |t|
      # t.index [:event_price_id, :event_id]
      # t.index [:event_id, :event_price_id]
    end
  end
end
