class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :location_id
      t.integer :user_id
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
