class UsersController < ApplicationController
    def show
        @items = User.find(user_id: current_user.id)
    end
end
