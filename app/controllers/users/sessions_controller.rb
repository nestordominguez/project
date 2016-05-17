class Users::SessionsController < Devise::SessionsController
  before_action :user_active?, only: [:create]
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  #def create
   # super
  #end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  
  private

    def user_active?
      user = User.find_by(email: params[:user][:email])
      if user
        unless user.active
          respond_to do |format|
            format.html { redirect_to root_path, :flash => { :error => "Your account is inactive." }}
          end
        end
      end
    end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
