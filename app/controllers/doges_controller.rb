class DogesController < ApplicationController
  before_action :set_doge, only: [:show, :edit, :update, :destroy]

  # GET /doges
  # GET /doges.json
  def index
    @doges = Doge.all
  end

  # GET /doges/1
  # GET /doges/1.json
  def show
  end

  # GET /doges/new
  def new
    @doge = Doge.new
  end

  # GET /doges/1/edit
  def edit
  end

  # POST /doges
  # POST /doges.json
  def create
    @doge = Doge.new(doge_params)

    respond_to do |format|
      if @doge.save
        format.html { redirect_to @doge, notice: 'Doge was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doge }
      else
        format.html { render action: 'new' }
        format.json { render json: @doge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doges/1
  # PATCH/PUT /doges/1.json
  def update
    respond_to do |format|
      if @doge.update(doge_params)
        format.html { redirect_to @doge, notice: 'Doge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doges/1
  # DELETE /doges/1.json
  def destroy
    @doge.destroy
    respond_to do |format|
      format.html { redirect_to doges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doge
      @doge = Doge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doge_params
      params[:doge]
    end
end
