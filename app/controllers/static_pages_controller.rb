class StaticPagesController < ApplicationController

  helper_method :each_sol_exc
  helper_method :create

  #def user_choose
   # if current_user.has_permission?('administrador')
    #  render 'static_pages/index.html.erb'
    #else
     # redirect_to cadastros_path
    #end
  #end
  def index
    @contadorSol_Excl_index=0;
    @contadorSol_Bloq_index=0;
    @contadorSol_Alt_index=0;

    @solicitacao_exclusaos = SolicitacaoExclusao.all
    @solicitacao_bloqs = SolicitacaoBloq.all
    @solicitacao_alts = SolicitacaoAlt.all


    @solicitacao_exclusaos.each do |solicitacao_exclusao|
      if(each_sol_exc(solicitacao_exclusao))
        @contadorSol_Excl_index+=1
      end

    end

    @solicitacao_bloqs.each do |solicitacao_bloq|
      if(each_sol_exc(solicitacao_bloq))
        @contadorSol_Bloq_index+=1
      end

    end

    @solicitacao_alts.each do |solicitacao_alt|
      if(each_sol_exc(solicitacao_alt))
        @contadorSol_Alt_index+=1
      end

    end

  end

  def each_sol_exc(object)
    if(object.subtract == 1)
      return true
    end

  end

end
