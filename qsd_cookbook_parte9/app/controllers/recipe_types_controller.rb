class RecipeTypesController < ApplicationController
  before_action :set_recipe_type, only: [:show, :edit, :update, :destroy]

  # GET /recipe_types
  # GET /recipe_types.json
  def index
    @recipe_types = RecipeType.all
  end

  # GET /recipe_types/1
  # GET /recipe_types/1.json
  def show
  end

  # GET /recipe_types/new
  def new
    @recipe_type = RecipeType.new
  end

  # GET /recipe_types/1/edit
  def edit
  end

  # POST /recipe_types
  # POST /recipe_types.json
  def create
    @recipe_type = RecipeType.new(recipe_type_params)

    respond_to do |format|
      if @recipe_type.save
        format.html { redirect_to @recipe_type, notice: 'Tipo de Receita criado com sucesso.' }
        format.json { render :show, status: :created, location: @recipe_type }
      else
        format.html { render :new }
        format.json { render json: @recipe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_types/1
  # PATCH/PUT /recipe_types/1.json
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

  # DELETE /recipe_types/1
  # DELETE /recipe_types/1.json
  def destroy
    @recipe_type.destroy
    respond_to do |format|
      format.html { redirect_to recipe_types_url, notice: 'Tipo de Receita excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_type
      @recipe_type = RecipeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_type_params
      params.require(:recipe_type).permit(:name)
    end
end
