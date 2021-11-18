class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :quantity
      t.boolean :status
      t.bigint :total_cost
      t.boolean :is_payment

      t.timestamps
    end
  end
end
