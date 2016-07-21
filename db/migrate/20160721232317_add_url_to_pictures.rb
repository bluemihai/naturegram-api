class AddUrlToPictures < ActiveRecord::Migration[5.0]
  def change
  	add_column :pictures, :pic_url, :string, default: 'http://i.imgur.com/vDB8nSwm.jpg'
  end
end
