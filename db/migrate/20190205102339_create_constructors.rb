class CreateConstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :constructors do |t|
      t.string :code, unique: true, index: true, null: false
      t.string :name, null: false
      t.string :nationality, null: false
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
