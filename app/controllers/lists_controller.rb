class ListsController < ApplicationController
  before_action :select_list, only: [:show, :edit, :update]

  def index
  @lists = List.all
  end

  def show
    
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @list.update(params_list)
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def select_list
    @list = List.find(params[:id])
  end

  
  def params_list
    params.require(:list).permit(:name)
  end

end
