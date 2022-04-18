module Api
    class Api::V1::UsersController < UnauthenticationsController
        def index
            render json: User.all
        end 
    end
end

