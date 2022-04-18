module Api
  class AuthenticationsController < UnauthenticationsController
      attr_reader :current_user

      before_action :authenticate_token

      protected

      def token
        request_token = ActionController::HttpAuthentication::Token.token_and_options(request).to_a.first
        request_token || params[:token]
      end

      def user_authorized?(user)
        Devise.secure_compare(token, user.auth_token)
      end

      def authenticate_token
        raise 'token_not_found' if token.nil?

        user = User.find_by(auth_token: token)
        raise 'user_not_found' unless user.present?
        raise 'user_not_authorized' unless user_authorized?(user)

        @current_user = user
      end
  end
end
