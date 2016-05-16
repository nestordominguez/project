class AdminUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :admin!

  def index
    @admin_users = User.all
  end

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @admin_user.update(user_params)
        format.html { redirect_to admin_user_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @admin_user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :role, :password, :password_confirmation)
    end

end
