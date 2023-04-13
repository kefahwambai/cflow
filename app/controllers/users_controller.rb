class UsersController < ApplicationController
    
    def create
        user = User.new(user_params)
        
        if user.save
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def index
        users = User.all
        render json: users
    end

    def show
        @user = current_user
        render json: @user
    end

    private 
    
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
