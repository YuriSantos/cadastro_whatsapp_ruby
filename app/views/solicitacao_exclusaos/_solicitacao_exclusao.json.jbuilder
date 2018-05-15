json.extract! solicitacao_exclusao, :id, :cadastro_id, :informacoes, :usuario, :visualizado, :created_at, :updated_at
json.url solicitacao_exclusao_url(solicitacao_exclusao, format: :json)
