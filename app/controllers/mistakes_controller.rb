class MistakesController < ApplicationController
  before_action :set_mistake, only: %i[ show edit update destroy ]

  # GET /mistakes or /mistakes.json
  def index
    @mistakes = Mistake.all
    respond_to do |format|
      format.html
      format.json { render json: MistakesDatatable.new(view_context) }
    end
  end

  # GET /mistakes/1 or /mistakes/1.json
  def show
  end

  # GET /mistakes/new
  def new
    @mistake = Mistake.new
  end

  # GET /mistakes/1/edit
  def edit
  end

  # POST /mistakes or /mistakes.json
  def create
    @mistake = Mistake.new(mistake_params)

    debugger
    respond_to do |format|
      if @mistake.save
        # set the mistake_id after mistake's creation
        mistake_id = @mistake.id
        UserMistake.last.update_attribute(mistake_id: mistake_id)
        format.html { redirect_to mistake_url(@mistake), notice: "Mistake was successfully created." }
        format.json { render :show, status: :created, location: @mistake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mistake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mistakes/1 or /mistakes/1.json
  def update
    respond_to do |format|
      if @mistake.update(mistake_params)
        format.html { redirect_to mistake_url(@mistake), notice: "Mistake was successfully updated." }
        format.json { render :show, status: :ok, location: @mistake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mistake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mistakes/1 or /mistakes/1.json
  def destroy
    @mistake.destroy!

    respond_to do |format|
      format.html { redirect_to mistakes_url, notice: "Mistake was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mistake
      @mistake = Mistake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mistake_params
      params.require(:mistake).permit(:name, :description, :severity)
    end
end
