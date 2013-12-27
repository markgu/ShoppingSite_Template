class IssueItemsController < ApplicationController
  before_action :set_issue_item, only: [:show, :edit, :update, :destroy]

  # GET /issue_items
  # GET /issue_items.json
  def index
    @issue_items = IssueItem.all
  end

  # GET /issue_items/1
  # GET /issue_items/1.json
  def show
  end

  # GET /issue_items/new
  def new
    @issue_item = IssueItem.new
  end

  # GET /issue_items/1/edit
  def edit
  end

  # POST /issue_items
  # POST /issue_items.json
  def create
    @issue_item = IssueItem.new(issue_item_params)

    respond_to do |format|
      if @issue_item.save
        format.html { redirect_to @issue_item, notice: 'Issue item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @issue_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @issue_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_items/1
  # PATCH/PUT /issue_items/1.json
  def update
    respond_to do |format|
      if @issue_item.update(issue_item_params)
        format.html { redirect_to @issue_item, notice: 'Issue item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @issue_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_items/1
  # DELETE /issue_items/1.json
  def destroy
    @issue_item.destroy
    respond_to do |format|
      format.html { redirect_to issue_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_item
      @issue_item = IssueItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_item_params
      params.require(:issue_item).permit(:comment, :startDate, :finishDate)
    end
end
