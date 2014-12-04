class ItemsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
    @item = @list.items.find(params[:id])
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(item_params)
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :machine_name, :list, :description, :url, :list_id)
    end
end
