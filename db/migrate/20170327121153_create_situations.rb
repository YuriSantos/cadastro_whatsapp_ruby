class CreateSituations < ActiveRecord::Migration[5.0]
  def change
    create_table :situations do |t|
      t.string :status
      t.string :functional
      t.string :medical
      t.string :juridical
      t.string :special
      t.string :alienation
      t.string :disciplinary
      t.string :gun_license
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :situations, :users, column: :user_id
  end
end
