class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @recipe = @user.recipes.page(params[:page]).per(10)
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, alart: '不正なアクセスです'
    end
    render layout: 'no_footer'
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: '更新に成功しました'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image, :profile_bg_image)
  end
end
