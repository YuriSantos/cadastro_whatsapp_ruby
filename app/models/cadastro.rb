class Cadastro < ApplicationRecord

  searchkick
  belongs_to :parte

  has_many :solicitacao_exclusaos
  has_many :solicitacao_alts
  has_many :solicitacao_bloqs
end
