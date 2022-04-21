module Api
    class Api::V1::TicketsController < UnauthenticationsController
        def create
           ticket = Ticket.new(message:"ceva", user_id:2)
           ticket.save!

           render json: ticket
        end
    end
end
