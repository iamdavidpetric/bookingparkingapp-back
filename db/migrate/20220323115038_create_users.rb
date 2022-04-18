class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.boolean :order_a_card, default: false
      t.string :card_sn

      t.timestamps
    end
  end
end
