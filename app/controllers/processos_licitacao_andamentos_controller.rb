class ProcessosLicitacaoAndamentosController < ApplicationController
  before_action :set_processos_licitacao_andamento, only: [:show, :edit, :update, :destroy]

  # GET /processos_licitacao_andamentos
  # GET /processos_licitacao_andamentos.json
  def index
    @processos_licitacao_andamentos = ProcessosLicitacaoAndamento.all
  end

  # GET /processos_licitacao_andamentos/1
  # GET /processos_licitacao_andamentos/1.json
  def show
  end

  # GET /processos_licitacao_andamentos/new
  def new
    @processos_licitacao_andamento = ProcessosLicitacaoAndamento.new
  end

  # GET /processos_licitacao_andamentos/1/edit
  def edit
  end

  # POST /processos_licitacao_andamentos
  # POST /processos_licitacao_andamentos.json
  def create
    @processos_licitacao_andamento = ProcessosLicitacaoAndamento.new(processos_licitacao_andamento_params)

    respond_to do |format|
      if @processos_licitacao_andamento.save
        format.html { redirect_to @processos_licitacao_andamento, notice: 'Processos licitacao andamento was successfully created.' }
        format.json { render :show, status: :created, location: @processos_licitacao_andamento }
      else
        format.html { render :new }
        format.json { render json: @processos_licitacao_andamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processos_licitacao_andamentos/1
  # PATCH/PUT /processos_licitacao_andamentos/1.json
  def update
    respond_to do |format|
      if @processos_licitacao_andamento.update(processos_licitacao_andamento_params)
        format.html { redirect_to @processos_licitacao_andamento, notice: 'Processos licitacao andamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @processos_licitacao_andamento }
      else
        format.html { render :edit }
        format.json { render json: @processos_licitacao_andamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processos_licitacao_andamentos/1
  # DELETE /processos_licitacao_andamentos/1.json
  def destroy
    @processos_licitacao_andamento.destroy
    respond_to do |format|
      format.html { redirect_to processos_licitacao_andamentos_url, notice: 'Processos licitacao andamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processos_licitacao_andamento
      @processos_licitacao_andamento = ProcessosLicitacaoAndamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processos_licitacao_andamento_params
      params.require(:processos_licitacao_andamento).permit(:numero_processo, :responsavel_processo_cpl, :modalidade_licitacao, :objeto, :quantidade, :registro_cge, :data_publicacao_DOE, :valor_ivestimento, :empresa_vencedora, :situacao)
    end
end
