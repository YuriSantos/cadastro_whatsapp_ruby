class SolicitacaoAlt < ApplicationRecord
  belongs_to :cadastro

  def subtract
    @dif = 1
    return @dif
  end
end
