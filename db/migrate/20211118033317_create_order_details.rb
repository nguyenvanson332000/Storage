class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :soccer_field, null: false, foreign_key: true
      t.bigint :current_price
      t.date :booking_started
      t.date :booking_closed

      t.timestamps
    end
  end
end
