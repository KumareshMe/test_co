class CreateUserPortals < ActiveRecord::Migration[7.0]
  def change
    create_table :user_portals do |t|
      t.string :first_name, index: true
      t.string :last_name, index: true
      t.integer :role, index: true
      t.text :image_data
      # t.string :image

      t.timestamps
    end
  end
end
