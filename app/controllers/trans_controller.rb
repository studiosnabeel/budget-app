class TransController < ApplicationController
  before_action :set_category
  before_action :set_tran, only: %i[show edit update destroy]

  # GET /trans or /trans.json
  def index
    # @category = Category.find(params[:category_id])
    # @trans = Tran.all
    @trans = @category.trans
  end

  # GET /trans/1 or /trans/1.json
  def show; end

  # GET /trans/new
  def new
    @tran = Tran.new
  end

  # GET /trans/1/edit
  def edit; end

  # POST /trans or /trans.json
  def create
    @category = Category.find(params[:category_id])
    @tran = Tran.new(tran_params.merge(author: current_user))

    respond_to do |format|
      if @tran.save
        @category.trans << @tran
        format.html { redirect_to category_path(@category), notice: 'Tran was successfully created.' }
        format.json { render :show, status: :created, location: @tran }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trans/1 or /trans/1.json
  def update
    respond_to do |format|
      if @tran.update(tran_params)
        format.html { redirect_to tran_url(@tran), notice: 'Tran was successfully updated.' }
        format.json { render :show, status: :ok, location: @tran }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans/1 or /trans/1.json
  def destroy
    @tran.destroy

    respond_to do |format|
      format.html { redirect_to trans_url, notice: 'Tran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tran
    @tran = Tran.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tran_params
    params.require(:tran).permit(:name, :amount)
  end
end
