class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :index
  end

  def show
    @creature = Creature.find(params[:id])
    render :show
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    @creature = Creature.new(request_params)
    if @creature.save
      redirect_to creature_path(@creature)
    end
  end

  def edit
    @creature = Creature.find(params[:id])
    render :edit
  end

  def update
    @creature = Creature.find(params[:id])
    @creature.update_attributes(request_params)
    redirect_to creature_path(@creature)
  end

  def destroy
    @creature = Creature.find(params[:id])
    if @creature.destroy
      redirect_to creatures_path
    end
  end

  private
  def request_params
    params.require(:creature).permit(:name, :description)
  end
end
