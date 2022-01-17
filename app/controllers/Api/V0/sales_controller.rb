module Api
  module V0
    class SalesController < ApplicationController
      def sale_ticket
        session = Session.find(params[:session][:id])
        user = User.find_by_email(params[:user][:email])

        ticket = Ticket.create(user: user, session: session)
        # ticket = Ticket.new
        # ticket.user = user
        # ticket.session = session

        if ticket.save
          render json: { "status": "ok" }
        else
          render json: { "status": user.errors }
        end
      end
    end
  end
end
