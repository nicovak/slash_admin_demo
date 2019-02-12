class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :code, unique: true, index: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nationality, null: false
      t.date :date_of_birth, null: false
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
