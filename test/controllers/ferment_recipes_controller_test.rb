require "test_helper"

class FermentRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ferment_recipe = ferment_recipes(:one)
  end

  test "should get index" do
    get ferment_recipes_url, as: :json
    assert_response :success
  end

  test "should create ferment_recipe" do
    assert_difference("FermentRecipe.count") do
      post ferment_recipes_url, params: { ferment_recipe: { fermentation_time: @ferment_recipe.fermentation_time, ingredients: @ferment_recipe.ingredients, instructions: @ferment_recipe.instructions, name: @ferment_recipe.name } }, as: :json
    end

    assert_response :created
  end

  test "should show ferment_recipe" do
    get ferment_recipe_url(@ferment_recipe), as: :json
    assert_response :success
  end

  test "should update ferment_recipe" do
    patch ferment_recipe_url(@ferment_recipe), params: { ferment_recipe: { fermentation_time: @ferment_recipe.fermentation_time, ingredients: @ferment_recipe.ingredients, instructions: @ferment_recipe.instructions, name: @ferment_recipe.name } }, as: :json
    assert_response :success
  end

  test "should destroy ferment_recipe" do
    assert_difference("FermentRecipe.count", -1) do
      delete ferment_recipe_url(@ferment_recipe), as: :json
    end

    assert_response :no_content
  end
end
