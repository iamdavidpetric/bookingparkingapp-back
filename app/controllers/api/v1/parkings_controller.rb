module Api
    class Api::V1::ParkingsController < UnauthenticationsController
        def index
            render json: Parking.all
        end
    end
end
