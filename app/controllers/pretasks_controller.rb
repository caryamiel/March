class PretasksController < ApplicationController
  before_action :set_pretask, only: [:show, :edit, :update, :destroy]

  # GET /pretasks
  # GET /pretasks.json
  def index
    @pretasks = Pretask.all
  end

  # GET /pretasks/1
  # GET /pretasks/1.json
  def show
  end

  # GET /pretasks/new
  def new
    @pretask = Pretask.new
  end

  # GET /pretasks/1/edit
  def edit
  end

  # POST /pretasks
  # POST /pretasks.json
  def create
    @pretask = Pretask.new(pretask_params)

    respond_to do |format|
      if @pretask.save
        format.html { redirect_to @pretask, notice: 'Pretask was successfully created.' }
        format.json { render :show, status: :created, location: @pretask }
      else
        format.html { render :new }
        format.json { render json: @pretask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pretasks/1
  # PATCH/PUT /pretasks/1.json
  def update
    respond_to do |format|
      if @pretask.update(pretask_params)
        format.html { redirect_to @pretask, notice: 'Pretask was successfully updated.' }
        format.json { render :show, status: :ok, location: @pretask }
      else
        format.html { render :edit }
        format.json { render json: @pretask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pretasks/1
  # DELETE /pretasks/1.json
  def destroy
    @pretask.destroy
    respond_to do |format|
      format.html { redirect_to pretasks_url, notice: 'Pretask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pretask
      @pretask = Pretask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pretask_params
      params.require(:pretask).permit(:name, :project_id, :user_id,:opdur,:nordur,:pesdur )
    end
end
