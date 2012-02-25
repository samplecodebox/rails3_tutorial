class SeasonsController < ApplicationController

  before_filter :find_show
  before_filter :find_season, :only =>[:show]
  
  def new
    @season = @show.seasons.build
  end

  def create
    @season = @show.seasons.build(params[:season])
    if @season.save
       redirect_to show_season_path(@show, @season), :notice => "Season has been successfully created."
    else
      flash[:error] = "Season was not created"
      render :action => :new
    end
  end

  def show

  end
  
  private

  def find_show
    @show = Show.find(params[:show_id])
  end

  def find_season
    @season = Season.find(params[:id])
  end
end
