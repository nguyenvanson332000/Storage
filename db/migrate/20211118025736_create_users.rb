class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: {unique: true}
      t.string :password_disget
      t.string :remember_digest
      t.integer :role, null: false, default: 0
      t.string :activation_digest
      t.boolean :activated

      t.timestamps
    end
  end
end
