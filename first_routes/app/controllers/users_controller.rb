class UsersController < ApplicationController
    def index 
        render json: User.all
    end

    def create 
        user = User.new(pass_params)
        #replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show 
        render json: params
    end

    def destroy
        # figure syntax
        user = User.find_by(id: :id)
        user.destroy
        render json: user
    end

    private
    def pass_params
        params.require(:user).permit(:username) 
    end
end