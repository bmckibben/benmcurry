class PicksController < ApplicationController
  before_action :set_pick, only: %i[ show edit update destroy ]

  # GET /picks or /picks.json
  def index
    @picks = Pick.all
  end

  # GET /picks/1 or /picks/1.json
  def show
  end

  # GET /picks/new
  def new
    @pick = Pick.new
  end

  # GET /picks/1/edit
  def edit
  end

  # POST /picks or /picks.json
  def create
    @pick = Pick.new(pick_params)

    respond_to do |format|
      if @pick.save
        format.html { redirect_to pick_url(@pick), notice: "Pick was successfully created." }
        format.json { render :show, status: :created, location: @pick }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picks/1 or /picks/1.json
  def update
    respond_to do |format|
      if @pick.update(pick_params)
        format.html { redirect_to pick_url(@pick), notice: "Pick was successfully updated." }
        format.json { render :show, status: :ok, location: @pick }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1 or /picks/1.json
  def destroy
    @pick.destroy

    respond_to do |format|
      format.html { redirect_to picks_url, notice: "Pick was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pick_params
      params.require(:pick).permit(:draw_date, :b1, :s1, :m1, :b2, :s2, :m2, :b3, :s3, :m3, :b4, :s4, :m4, :b5, :s5, :m5, :powerball, :powerscore, :powermatch, :won)
    end
end
