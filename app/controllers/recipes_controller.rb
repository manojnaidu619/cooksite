class RecipesController < ApplicationController

  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
     if @recipe.save
       redirect_to root_path
     else
       render 'new'
  end
 end

 def show

 end

 def edit

 end

 def update
    if @recipe.update(recipe_params)
      redirect_to root_path
    else
      render 'edit'
    end
 end

 def destroy
    if @recipe.destroy
      redirect_to root_path
    end
 end

 private

 def find_params
   @recipe = Recipe.find(params[:id])
 end

 def recipe_params
   params.require(:recipe).permit(:name, :description, :avatar)
 end
end
