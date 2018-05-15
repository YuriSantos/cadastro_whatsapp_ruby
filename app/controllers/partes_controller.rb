class PartesController < ApplicationController
  before_action :set_parte, only: [:show, :edit, :update, :destroy]

  # GET /partes
  # GET /partes.json
  def index
    @partes = Parte.all
  end

  # GET /partes/1
  # GET /partes/1.json
  def show
  end

  # GET /partes/new
  def new
    @parte = Parte.new
  end

  # GET /partes/1/edit
  def edit
  end

  # POST /partes
  # POST /partes.json
  def create
    @parte = Parte.new(parte_params)

    respond_to do |format|
      if @parte.save
        format.html { redirect_to @parte, notice: 'Parte was successfully created.' }
        format.json { render :show, status: :created, location: @parte }
      else
        format.html { render :new }
        format.json { render json: @parte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partes/1
  # PATCH/PUT /partes/1.json
  def update
    respond_to do |format|
      if @parte.update(parte_params)
        format.html { redirect_to @parte, notice: 'Parte was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte }
      else
        format.html { render :edit }
        format.json { render json: @parte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partes/1
  # DELETE /partes/1.json
  def destroy
    @parte.destroy
    respond_to do |format|
      format.html { redirect_to partes_url, notice: 'Parte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte
      @parte = Parte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_params
      params.require(:parte).permit(:nome)
    end
end
