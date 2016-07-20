class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :latitude
      t.string :longitude
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
