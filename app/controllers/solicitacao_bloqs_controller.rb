class SolicitacaoBloqsController < ApplicationController
  before_action :set_solicitacao_bloq, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_bloqs
  # GET /solicitacao_bloqs.json
  def index
    @solicitacao_bloqs = SolicitacaoBloq.all
  end

  # GET /solicitacao_bloqs/1
  # GET /solicitacao_bloqs/1.json
  def show
  end

  # GET /solicitacao_bloqs/new
  def new
    @solicitacao_bloq = SolicitacaoBloq.new
  end

  # GET /solicitacao_bloqs/1/edit
  def edit
  end

  # POST /solicitacao_bloqs
  # POST /solicitacao_bloqs.json
  def create
    @solicitacao_bloq = SolicitacaoBloq.new(solicitacao_bloq_params)

    respond_to do |format|
      if @solicitacao_bloq.save
        format.html { redirect_to @solicitacao_bloq, notice: 'Solicitacao bloq was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_bloq }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_bloq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_bloqs/1
  # PATCH/PUT /solicitacao_bloqs/1.json
  def update
    respond_to do |format|
      if @solicitacao_bloq.update(solicitacao_bloq_params)
        format.html { redirect_to @solicitacao_bloq, notice: 'Solicitacao bloq was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_bloq }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_bloq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_bloqs/1
  # DELETE /solicitacao_bloqs/1.json
  def destroy
    @solicitacao_bloq.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_bloqs_url, notice: 'Solicitacao bloq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_bloq
      @solicitacao_bloq = SolicitacaoBloq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_bloq_params
      params.require(:solicitacao_bloq).permit(:cadastro_id, :informacoes, :usuario, :visualizado)
    end
end
