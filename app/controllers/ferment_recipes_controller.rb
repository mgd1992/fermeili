class FermentRecipesController < ApplicationController
  before_action :set_ferment_recipe, only: %i[ show update destroy ]

  # GET /ferment_recipes
  def index
    @ferment_recipes = FermentRecipe.all

    render json: @ferment_recipes
  end

  # GET /ferment_recipes/1
  def show
    render json: @ferment_recipe
  end

  # POST /ferment_recipes
  def create
    @ferment_recipe = FermentRecipe.new(ferment_recipe_params)

    if @ferment_recipe.save
      render json: @ferment_recipe, status: :created, location: @ferment_recipes
    else
      render json: @ferment_recipe.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ferment_recipes/1
  def update
    if @ferment_recipe.update(ferment_recipe_params)
      render json: @ferment_recipe
    else
      render json: @ferment_recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ferment_recipes/1
  def destroy
    @ferment_recipe.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ferment_recipe
      @ferment_recipe = FermentRecipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ferment_recipe_params
      params.require(:ferment_recipe).permit(:name, :ingredients, :instructions, :fermentation_time, photos: [])
    end
end
