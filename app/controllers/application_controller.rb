class ApplicationController < ActionController::Base
    
    helper :users

    before_action :configure_permitted_parameters, if: :devise_controller?

    def test
        @user = User.find(params[:id])
    end

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :avatar, :phone_number, :description])
    end

end
