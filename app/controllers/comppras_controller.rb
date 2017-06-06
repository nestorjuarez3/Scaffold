class CompprasController < ApplicationController
  before_action :set_comppra, only: [:show, :edit, :update, :destroy]

  # GET /comppras
  # GET /comppras.json
  def index
    @comppras = Comppra.all
  end

  # GET /comppras/1
  # GET /comppras/1.json
  def show
  end

  # GET /comppras/new
  def new
    @comppra = Comppra.new
  end

  # GET /comppras/1/edit
  def edit
  end

  # POST /comppras
  # POST /comppras.json
  def create
    @comppra = Comppra.new(comppra_params)

    respond_to do |format|
      if @comppra.save
        format.html { redirect_to @comppra, notice: 'Comppra was successfully created.' }
        format.json { render :show, status: :created, location: @comppra }
      else
        format.html { render :new }
        format.json { render json: @comppra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comppras/1
  # PATCH/PUT /comppras/1.json
  def update
    respond_to do |format|
      if @comppra.update(comppra_params)
        format.html { redirect_to @comppra, notice: 'Comppra was successfully updated.' }
        format.json { render :show, status: :ok, location: @comppra }
      else
        format.html { render :edit }
        format.json { render json: @comppra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comppras/1
  # DELETE /comppras/1.json
  def destroy
    @comppra.destroy
    respond_to do |format|
      format.html { redirect_to comppras_url, notice: 'Comppra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comppra
      @comppra = Comppra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comppra_params
      params.require(:comppra).permit(:fecha_compra, :monto, :cliente)
    end
end
