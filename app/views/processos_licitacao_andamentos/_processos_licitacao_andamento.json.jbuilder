json.extract! processos_licitacao_andamento, :id, :numero_processo, :responsavel_processo_cpl, :modalidade_licitacao, :objeto, :quantidade, :registro_cge, :data_publicacao_DOE, :valor_ivestimento, :empresa_vencedora, :situacao, :created_at, :updated_at
json.url processos_licitacao_andamento_url(processos_licitacao_andamento, format: :json)
