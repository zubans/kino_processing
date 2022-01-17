module Api
  module V0
    class SessionsController < ApplicationController
      def get_sessions
        sessions = []
        Session.actual.each do |session|
          sessions.push  *[
              id: session.id,
              name: session.film.name,
              time: session.s_time.strftime('%m.%d.%Y %H:%m')
            ]
          end
        
        render json: sessions
      end

      def add_session
        result = Session.create(s_time: params[:session][:time], film: Film.find(params[:film][:id]))
        if result.save
          render json: { "status": "ok" }
        else
          render json: { "status": result.errors }
        end
      end
    end
  end
end
