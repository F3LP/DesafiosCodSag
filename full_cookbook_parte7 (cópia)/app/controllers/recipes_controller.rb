class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def options_for_select
    @recipe_type_for_select = RecipeType.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    options_for_select
  end

  def create
    options_for_select
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      flash[:alert] = 'Você deve informar todos os dados da receita'
      render :new
    end
  end

  def edit
      options_for_select
    @recipe = Recipe.find(params[:id])
  end

  def update
    options_for_select
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      flash[:alert] = 'Você deve informar todos os dados da receita'
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty,
                                   :cook_time, :ingredients, :cook_method, :recipe_type_id)
  end
end
