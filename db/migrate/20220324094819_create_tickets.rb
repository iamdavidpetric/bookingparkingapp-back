class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :message
      t.boolean :solved, default: false
      t.boolean :responsed, default: false

      t.timestamps
    end
  end
end
