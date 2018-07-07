class CreateCircuits < ActiveRecord::Migration[5.1]
  def change
    create_table :circuits do |t|
      t.string :code, unique: true, index: true, null: false
      t.string :name, null: false
      t.text :location
      t.timestamps
    end
  end
end
