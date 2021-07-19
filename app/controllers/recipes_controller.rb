class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @recipes = Recipe.page(params[:page]).per(10)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = @recipe.user
  end

  def new
    @recipe = Recipe.new
    render layout: 'no_footer'
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: '投稿に成功しました'
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    if @recipe.user != current_user
      redirect_to recipes_path, alart: '不正なアクセスです'
    end
    render layout: 'no_footer'
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: '更新に成功しました'
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to user_path(recipe.user)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :profile, :body, :image)
  end
end
