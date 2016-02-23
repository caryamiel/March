class PredependsController < ApplicationController
  before_action :set_predepend, only: [:show, :edit, :update, :destroy]

  # GET /predepends
  # GET /predepends.json
  def index
    @predepends = Predepend.all
  end

  # GET /predepends/1
  # GET /predepends/1.json
  def show
  end

  # GET /predepends/new
  def new
    @predepend = Predepend.new
  end

  # GET /predepends/1/edit
  def edit
  end

  # POST /predepends
  # POST /predepends.json
  def create
    @predepend = Predepend.new(predepend_params)

    respond_to do |format|
      if @predepend.save
        format.html { redirect_to @predepend, notice: 'Predepend was successfully created.' }
        format.json { render :show, status: :created, location: @predepend }
      else
        format.html { render :new }
        format.json { render json: @predepend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predepends/1
  # PATCH/PUT /predepends/1.json
  def update
    respond_to do |format|
      if @predepend.update(predepend_params)
        format.html { redirect_to @predepend, notice: 'Predepend was successfully updated.' }
        format.json { render :show, status: :ok, location: @predepend }
      else
        format.html { render :edit }
        format.json { render json: @predepend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predepends/1
  # DELETE /predepends/1.json
  def destroy
    @predepend.destroy
    respond_to do |format|
      format.html { redirect_to predepends_url, notice: 'Predepend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predepend
      @predepend = Predepend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predepend_params
      params.require(:predepend).permit(:pretask_id, :pretaskdependto_id)
    end
end
