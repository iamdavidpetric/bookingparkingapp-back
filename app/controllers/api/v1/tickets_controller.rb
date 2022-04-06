module Api
    class Api::V1::TicketsController < UnauthenticationsController
        def index
            render json: Ticket.all
        end
    end
end
