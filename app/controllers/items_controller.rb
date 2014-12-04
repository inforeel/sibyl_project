class ItemsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  before_filter :load_list

  def index
    @items = @list.items.all
    @items = Item.all
    @items = @list.items.all? { |e|  }
    respond_with(@items)
  end

  def show
    respond_with(@item)
    #@item = Item.find(params[:id])
    @item = @list.items.find(params[:id])
  end

  def new
    @item = Item.new
    @item = @list.items.new
    respond_with(@item)
  end

  def edit
    #@item = Item.find(params[:id])
    @item = @list.items.find(params[:id])
  end

  def create
    @list = List.find(params[:list_id])
    @item = Item.new(item_params)
    @item.list_id = @list.id 
    respond_with([@list, @item])
    #@item = @list.items.new(params[:item])
    
    respond_to do |format|
      if @item.save
        format.html { redirect_to [@list, @item], notice: 'Item was succesfully created.'}
      end 
    end   
  end

  def update
    @item.update(item_params)
    #@item = Item.find(params[:id])
    respond_with(@item)
    @item = @list.items.find(params[:id])
    
    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to [@list, @item], notice: 'Item was successfully updated.'}
      end
    end 
  end

  def destroy
  #   #@item = Item.find(params[:id])
      respond_with(@item)
    @item = @list.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to list_items_path(@list)}
      end
  end

  private
    def load_list
      @list = List.find(params[:list_id])
    end

private
    def set_item
      #@item = Item.find(params[:id])
      @item = @list.items.find(params[:id])
    end

private
    def item_params
      params.require(:item).permit(:name, :machine_name, :list, :description, :url, :list_id)
    end
end