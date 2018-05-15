class CreateSolicitacaoExclusaos < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitacao_exclusaos do |t|
      t.integer :cadastro_id
      t.string :informacoes
      t.string :usuario
      t.integer :visualizado

      t.timestamps
    end
  end
end
