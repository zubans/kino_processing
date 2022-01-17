module Api
  module V0
    class UsersController < ApplicationController

      # @return string
      def create
        user = User.new
        user_params = params[:user]
        salt = Digest::SHA1.hexdigest("# We add #{user_params[:email]} as unique value and #{Time.now} as random value")

        user.name = user_params[:name]
        user.email = user_params[:email]
        user.salt = salt
        user.age = user_params['age']
        user.e_password = helpers.generate_password(salt, user_params[:password])

        if user.save
          render json: { 'status': 'ok', 'code': 200 }
        else
          render json: { 'status': user.errors, 'code': 500 }
        end
      end

      # @return string
      def auth
        user = User.find_by_email(params[:user][:email])
        pass = helpers.generate_password(user.salt, params[:user][:password])

        if pass == user.e_password
          render json: { "status": true, "name": user.name }
        else
          render json: { "status": 'error login or password' }
        end
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password, :salt, :age)
      end
    end
  end
end
