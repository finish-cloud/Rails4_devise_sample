class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        Item.create(name: item_params[:name], item_params[:price], user_id: current_user.id)
    end

    def move_to_index
        redirect_to action: :index unless user_sighed_in?
    end
    private

    def item_params
        params.require(:item).permit(:name, :price)
    end
end
