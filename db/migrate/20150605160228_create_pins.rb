class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :description
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :venue
      t.string :orientation
      t.integer :date

      t.timestamps null: false
    end
  end
end
