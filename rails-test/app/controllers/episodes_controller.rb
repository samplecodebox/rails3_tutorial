class EpisodesController < ApplicationController

  before_filter :find_season_show
  before_filter :find_episode, :only =>[:show]


  def new
    @episode = @season.episodes.build
  end

  def create
    @episode = @season.episodes.build(params[:episode])
    if @episode.save
      redirect_to season_episode_path(@season, @episode), :notice => "Episode has been successfully created."
    else
      render :action => :new
    end
  end
  
  private

  def find_season_show
    @season = Season.find(params[:season_id])
    @show = @season.show
  end

  def find_episode
    @episode = Episode.find(params[:id])
  end
end
