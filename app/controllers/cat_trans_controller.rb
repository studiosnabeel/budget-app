class CatTransController < ApplicationController
  before_action :set_cat_tran, only: %i[ show edit update destroy ]

  # GET /cat_trans or /cat_trans.json
  def index
    @cat_trans = CatTran.all
  end

  # GET /cat_trans/1 or /cat_trans/1.json
  def show
  end

  # GET /cat_trans/new
  def new
    @cat_tran = CatTran.new
  end

  # GET /cat_trans/1/edit
  def edit
  end

  # POST /cat_trans or /cat_trans.json
  def create
    @cat_tran = CatTran.new(cat_tran_params)

    respond_to do |format|
      if @cat_tran.save
        format.html { redirect_to cat_tran_url(@cat_tran), notice: "Cat tran was successfully created." }
        format.json { render :show, status: :created, location: @cat_tran }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cat_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_trans/1 or /cat_trans/1.json
  def update
    respond_to do |format|
      if @cat_tran.update(cat_tran_params)
        format.html { redirect_to cat_tran_url(@cat_tran), notice: "Cat tran was successfully updated." }
        format.json { render :show, status: :ok, location: @cat_tran }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cat_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_trans/1 or /cat_trans/1.json
  def destroy
    @cat_tran.destroy

    respond_to do |format|
      format.html { redirect_to cat_trans_url, notice: "Cat tran was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_tran
      @cat_tran = CatTran.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_tran_params
      params.fetch(:cat_tran, {})
    end
end
