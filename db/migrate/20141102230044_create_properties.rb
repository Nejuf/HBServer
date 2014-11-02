class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :base_value
      t.integer :level, default: 0
      t.integer :base_rent_per_hour
      t.string :address
      t.string :name
      t.integer :owner_id
      t.string :coords

      t.timestamps
    end
    add_index :properties, :owner_id
    add_index :properties, :coords
  end
end
