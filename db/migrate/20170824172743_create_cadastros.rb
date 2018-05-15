class CreateCadastros < ActiveRecord::Migration[5.1]
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.integer :parte_id
      t.string :telefone
      t.string :cpf
      t.string :data_cadastro
      t.string :local
      t.integer :user_id
      t.integer :visualizado

      t.timestamps
    end
  end
end
