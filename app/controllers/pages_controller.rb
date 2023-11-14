class PagesController < ApplicationController
  def index
    # Nenhuma lógica necessária para a página inicial por enquanto
  end

  # @return [nil]
  def list
    @netflix_titles = NetflixTitle.order(year: :asc)
    render 'list'
  end
end