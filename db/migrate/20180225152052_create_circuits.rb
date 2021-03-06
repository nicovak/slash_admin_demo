class CreateCircuits < ActiveRecord::Migration[5.1]
  def change
    create_table :circuits do |t|
      t.string :code, unique: true, index: true, null: false
      t.string :name, null: false
      t.string :url
      t.jsonb :google_map, index: { using: :gin }
      t.string :image
      t.timestamps
    end
  end
end
