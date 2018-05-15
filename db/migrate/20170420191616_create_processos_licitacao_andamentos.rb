class CreateProcessosLicitacaoAndamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :processos_licitacao_andamentos do |t|
      t.string :numero_processo
      t.string :responsavel_processo_cpl
      t.string :modalidade_licitacao
      t.string :objeto
      t.string :quantidade
      t.string :registro_cge
      t.date :data_publicacao_DOE
      t.float :valor_ivestimento
      t.string :empresa_vencedora
      t.string :situacao

      t.timestamps
    end
  end
end
