class RecipeTypesController < ApplicationController
  before_action :set_recipe_type, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_types = RecipeType.all
  end

  def show
  end

  def new
    @recipe_type = RecipeType.new
  end


  def edit
  end

  def create
    @recipe_type = RecipeType.new(recipe_type_params)
      if @recipe_type.save
        redirect_to @recipe_type
      else
        render :new
      end
  end

  def update
    respond_to do |format|
      if @recipe_type.update(recipe_type_params)
        format.html { redirect_to @recipe_type, notice: 'Tipo de Receita atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @recipe_type }
      else
        format.html { render :edit }
        format.json { render json: @recipe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe_type.destroy
    respond_to do |format|
      format.html { redirect_to recipe_types_url, notice: 'Tipo de Receita excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

    def set_recipe_type
      @recipe_type = RecipeType.find(params[:id])
    end

    def recipe_type_params
      params.require(:recipe_type).permit(:name)
    end
end
