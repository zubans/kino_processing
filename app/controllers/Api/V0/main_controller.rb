# frozen_string_literal: true

module Api
  module V0
    # controller for common requests
    class MainController < ApplicationController
      def index
        # render json: { trailers: Trailer.actual, sessions: Session.actual, banners: [], user: 'guest' } #todo add user registration
        render json: { movies: Film.all } #todo add user registration
      end
    end
  end
end

