class CreatePartes < ActiveRecord::Migration[5.1]
  def change
    create_table :partes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
