class UserMistakesController < ApplicationController
  before_action :set_user_mistake, only: %i[ show edit update destroy ]

  # GET /user_mistakes or /user_mistakes.json
  def index
    @user_mistakes = UserMistake.all
    respond_to do |format|
      format.html
      format.json { render json: UserMistakesDatatable.new(view_context) }
    end
  end

  # GET /user_mistakes/1 or /user_mistakes/1.json
  def show
  end

  # GET /user_mistakes/new
  def new
    @user_mistake = UserMistake.new
  end

  # GET /user_mistakes/1/edit
  def edit
  end

  # POST /user_mistakes or /user_mistakes.json
  def create
    @user_mistake = UserMistake.new(user_mistake_params)

    respond_to do |format|
      if @user_mistake.save
        format.html { redirect_to user_mistakes_url, notice: "Mistake successfully logged." }
        format.json { render :show, status: :created, location: @user_mistake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_mistake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_mistakes/1 or /user_mistakes/1.json
  def update
    respond_to do |format|
      if @user_mistake.update(user_mistake_params)
        format.html { redirect_to user_mistake_url(@user_mistake), notice: "User mistake was successfully updated." }
        format.json { render :show, status: :ok, location: @user_mistake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_mistake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_mistakes/1 or /user_mistakes/1.json
  def destroy
    @user_mistake.destroy!

    respond_to do |format|
      format.html { redirect_to user_mistakes_url, notice: "User mistake was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_mistake
      @user_mistake = UserMistake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_mistake_params
      params.require(:user_mistake).permit(:user_id, :mistake_id)
    end
end

