class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :city
      t.string :name
      t.string :description
      t.integer :regular_spots
      t.integer :ev_spots
      t.string :image_link

      t.timestamps
    end
  end
end
