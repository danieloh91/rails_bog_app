class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    @creature = Creature.create(creature_params)
    if @creature.save
      redirect_to creature_path(@creature)
    end
  end

  def show
    @creature = Creature.find_by_id(params[:id])
    render :show
  end

  def edit
    @creature = Creature.find_by_id(params[:id])
    render :edit
  end

  def update
    @creature = Creature.find_by_id(params[:id])
    @creature.update_attributes(creature_params)
    redirect_to creatures_path
  end

  def delete
    @creature = Creature.find_by_id(params[:id])
    @creature.destroy
    redirect_to creatures_path
  end

  private
    def creature_params
      params.require(:creature).permit(:name, :description)
    end

end
