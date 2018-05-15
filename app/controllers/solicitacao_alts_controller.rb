class SolicitacaoAltsController < ApplicationController
  before_action :set_solicitacao_alt, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_alts
  # GET /solicitacao_alts.json
  def index
    @solicitacao_alts = SolicitacaoAlt.all
  end

  # GET /solicitacao_alts/1
  # GET /solicitacao_alts/1.json
  def show
  end

  # GET /solicitacao_alts/new
  def new
    @solicitacao_alt = SolicitacaoAlt.new
  end

  # GET /solicitacao_alts/1/edit
  def edit
  end

  # POST /solicitacao_alts
  # POST /solicitacao_alts.json
  def create
    @solicitacao_alt = SolicitacaoAlt.new(solicitacao_alt_params)

    respond_to do |format|
      if @solicitacao_alt.save
        format.html { redirect_to @solicitacao_alt, notice: 'Solicitacao alt was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_alt }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_alt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_alts/1
  # PATCH/PUT /solicitacao_alts/1.json
  def update
    respond_to do |format|
      if @solicitacao_alt.update(solicitacao_alt_params)
        format.html { redirect_to @solicitacao_alt, notice: 'Solicitacao alt was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_alt }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_alt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_alts/1
  # DELETE /solicitacao_alts/1.json
  def destroy
    @solicitacao_alt.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_alts_url, notice: 'Solicitacao alt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_alt
      @solicitacao_alt = SolicitacaoAlt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_alt_params
      params.require(:solicitacao_alt).permit(:cadastro_id, :informacoes, :usuario, :visualizado)
    end
end
