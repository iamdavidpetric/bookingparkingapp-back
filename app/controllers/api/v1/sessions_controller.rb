module Api
    class Api::V1::SessionsController < AuthenticationsController
        skip_before_action :authenticate_token, only: [:create]

        def create
            login_if_valid_credentials
            render json: current_user
        end
        
        def destroy
            current_user.regenerate_auth_token
            render json: current_user
        end
        
        protected 
        
        
        def login_if_valid_credentials
            user = User.find_by(email: params[:email])
            valid_password = user&.valid_password?(params[:password])
            raise 'incorrect_email_or_password' unless user.present? && valid_password
            
            sign_in user
            @current_user = user
        end
    end
end
