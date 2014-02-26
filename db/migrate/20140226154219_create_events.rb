class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :property_1
      t.string :property_2
      t.string :property_3
      t.string :property_4
      t.string :property_5

      t.timestamps
    end

    add_index :events, :name
  end
end
