class SolicitacaoExclusaosController < ApplicationController
  before_action :set_solicitacao_exclusao, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_exclusaos
  # GET /solicitacao_exclusaos.json
  def index
    @solicitacao_exclusaos = SolicitacaoExclusao.all
  end

  # GET /solicitacao_exclusaos/1
  # GET /solicitacao_exclusaos/1.json
  def show
  end

  # GET /solicitacao_exclusaos/new
  def new
    @solicitacao_exclusao = SolicitacaoExclusao.new
  end

  # GET /solicitacao_exclusaos/1/edit
  def edit
  end

  # POST /solicitacao_exclusaos
  # POST /solicitacao_exclusaos.json
  def create
    @solicitacao_exclusao = SolicitacaoExclusao.new(solicitacao_exclusao_params)

    respond_to do |format|
      if @solicitacao_exclusao.save
        format.html { redirect_to cadastros_path, notice: 'Solicitacao enviada com sucesso.' }
        format.json { render :show, status: :created, location: @solicitacao_exclusao }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_exclusao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_exclusaos/1
  # PATCH/PUT /solicitacao_exclusaos/1.json
  def update
    respond_to do |format|
      if @solicitacao_exclusao.update(solicitacao_exclusao_params)
        format.html { redirect_to @solicitacao_exclusao, notice: 'Solicitacao exclusao was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_exclusao }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_exclusao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_exclusaos/1
  # DELETE /solicitacao_exclusaos/1.json
  def destroy
    @solicitacao_exclusao.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_exclusaos_url, notice: 'Solicitacao exclusao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_exclusao
      @solicitacao_exclusao = SolicitacaoExclusao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_exclusao_params
      params.require(:solicitacao_exclusao).permit(:cadastro_id, :informacoes, :usuario, :visualizado)
    end
end
