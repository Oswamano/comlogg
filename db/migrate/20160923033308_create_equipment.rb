class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
