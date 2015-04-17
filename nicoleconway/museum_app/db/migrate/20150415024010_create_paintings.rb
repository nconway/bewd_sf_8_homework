class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :artist
      t.string :museum
      t.string :title
      t.string :user_id
      t.string :image

      t.timestamps
    end
  end
end
