module Api
    class Api::V1::ParkingsController < UnauthenticationsController
        def index
            render json: Parking.all
        end

        def show
            render json: Parking.find(params[:id])
        end
    end
end
