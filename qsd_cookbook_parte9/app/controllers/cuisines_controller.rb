class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:show, :edit, :update, :destroy]

  def index
    @cuisines = Cuisine.all
  end

  def show
  end

  def new
    @cuisine = Cuisine.new
  end

  def edit
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)

    respond_to do |format|
      if @cuisine.save
        format.html { redirect_to @cuisine, notice: 'Cozinha criada com sucesso' }
        format.json { render :show, status: :created, location: @cuisine }
      else
        format.html { render :new }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @cuisine.update(cuisine_params)
        format.html { redirect_to @cuisine, notice: 'Cozinha atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @cuisine }
      else
        format.html { render :edit }
        format.json { render json: @cuisine.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cuisine.destroy
    respond_to do |format|
      format.html { redirect_to cuisines_url, notice: 'Cozinha excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    def cuisine_params
      params.require(:cuisine).permit(:name)
    end
end
