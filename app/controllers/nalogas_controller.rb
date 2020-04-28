class NalogasController < ApplicationController
  before_action :set_naloga, only: [:show, :edit, :update, :destroy]

  # GET /nalogas
  # GET /nalogas.json
  def index
    @nalogas = Naloga.all
  end

  # GET /nalogas/1
  # GET /nalogas/1.json
  def show
  end

  # GET /nalogas/new
  def new
    @naloga = Naloga.new
  end

  # GET /nalogas/1/edit
  def edit
  end

  # POST /nalogas
  # POST /nalogas.json
  def create
    @naloga = Naloga.new(naloga_params)

    respond_to do |format|
      if @naloga.save
        format.html { redirect_to @naloga, notice: 'Naloga was successfully created.' }
        format.json { render :show, status: :created, location: @naloga }
      else
        format.html { render :new }
        format.json { render json: @naloga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nalogas/1
  # PATCH/PUT /nalogas/1.json
  def update
    respond_to do |format|
      if @naloga.update(naloga_params)
        format.html { redirect_to @naloga, notice: 'Naloga was successfully updated.' }
        format.json { render :show, status: :ok, location: @naloga }
      else
        format.html { render :edit }
        format.json { render json: @naloga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nalogas/1
  # DELETE /nalogas/1.json
  def destroy
    @naloga.destroy
    respond_to do |format|
      format.html { redirect_to nalogas_url, notice: 'Naloga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naloga
      @naloga = Naloga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def naloga_params
      params.require(:naloga).permit(:start_time)
    end
end
