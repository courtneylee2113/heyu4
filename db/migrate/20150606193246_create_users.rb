class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
      t.bigint :facebook_id

      t.timestamps null: false
    end
  end
end
