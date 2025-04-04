class UserFermentsController < ApplicationController
  before_action :set_user_ferment, only: %i[ show update destroy ]

  # GET /user_ferments
  def index
    @user_ferments = UserFerment.all

    render json: @user_ferments
  end

  # GET /user_ferments/1
  def show
    
    render json: @user_ferment
  end

  # POST /user_ferments
  def create
    @user_ferment = UserFerment.new(user_ferment_params)

    if @user_ferment.save
      render json: @user_ferment, status: :created, location: @user_ferment
    else
      render json: @user_ferment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_ferments/1
  def update
    if @user_ferment.update(user_ferment_params)
      render json: @user_ferment
    else
      render json: @user_ferment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_ferments/1
  def destroy
    @user_ferment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_ferment
      @user_ferment = UserFerment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_ferment_params
      params.require(:user_ferment).permit(:name, :comments, :fermentation_starts, :fermentation_end)
    end
end
