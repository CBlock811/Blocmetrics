class CreateProperties < ActiveRecord::Migration
  def change
    create_table :event_properties do |t|
      t.string :name
      t.string :value
      t.integer :event_id

      t.timestamps
    end
  end
end
