class AdminUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_admin!

  def index
    @users = User.all
  end

  def show; end

  def edit; end

  def update
    case user_params
    when user_params[:active] == 1
      user_params[:active] = true
    when user_params[:active] == 0
      user_params[:active] = false
    end
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_user_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :role, :password, :password_confirmation, :active)
    end

end
