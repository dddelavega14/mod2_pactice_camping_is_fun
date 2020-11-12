class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
  end

  def new
    @camper = Camper.new

    render :new
  end

  def create
    @camper = Camper.create(camper_params)

    if @camper.valid?   
      redirect_to camper_path(camper)
    else 
      redirect_back(fallback_location: campers_path)
    end 
  end

    def show
      @camper = Camper.find(params[:id])
    end

    private

    def camper_params
      params.require(:camper).permit(:name, :age)
    end




end
