class NetflixTitlesController < ApplicationController
  before_action :set_netflix_title, only: [:show]

  def index
    @netflix_titles = NetflixTitle.order(year: :asc)
    render json: @netflix_titles
  end

  def filter
    @netflix_titles = NetflixTitleFilter.new(params).filter
    render json: @netflix_titles
  end

  def show
    render json: @netflix_title
  end

  private

  def set_netflix_title
    @netflix_title = NetflixTitle.find(params[:id])
  end
end