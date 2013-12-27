class LuckyTodaysController < ApplicationController
  before_action :set_lucky_today, only: [:show, :edit, :update, :destroy]

  # GET /lucky_todays
  # GET /lucky_todays.json
  def index
    @lucky_todays = LuckyToday.all
  end

  # GET /lucky_todays/1
  # GET /lucky_todays/1.json
  def show
  end

  # GET /lucky_todays/new
  def new
    @lucky_today = LuckyToday.new
  end

  # GET /lucky_todays/1/edit
  def edit
  end

  # POST /lucky_todays
  # POST /lucky_todays.json
  def create
    @lucky_today = LuckyToday.new(lucky_today_params)

    respond_to do |format|
      if @lucky_today.save
        format.html { redirect_to @lucky_today, notice: 'Lucky today was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lucky_today }
      else
        format.html { render action: 'new' }
        format.json { render json: @lucky_today.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lucky_todays/1
  # PATCH/PUT /lucky_todays/1.json
  def update
    respond_to do |format|
      if @lucky_today.update(lucky_today_params)
        format.html { redirect_to @lucky_today, notice: 'Lucky today was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lucky_today.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lucky_todays/1
  # DELETE /lucky_todays/1.json
  def destroy
    @lucky_today.destroy
    respond_to do |format|
      format.html { redirect_to lucky_todays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lucky_today
      @lucky_today = LuckyToday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lucky_today_params
      params.require(:lucky_today).permit(:applied_at, :discountRate)
    end
end
