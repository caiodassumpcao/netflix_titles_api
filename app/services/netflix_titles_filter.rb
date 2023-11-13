class NetflixTitleFilter
  def initialize(params)
    @params = params
  end

  def filter
    @netflix_titles = NetflixTitle.all

    filter_by_year
    filter_by_genre
    filter_by_country

    @netflix_titles.uniq
  end

  private
  def filter_by_year
    @netflix_titles = @netflix_titles.where(year: @params[:year]) if @params[:year].present?
  end

  def filter_by_genre
    @netflix_titles = @netflix_titles.where(genre: @params[:genre]) if @params[:genre].present?
  end

  def filter_by_country
    @netflix_titles = @netflix_titles.where(country: @params[:country]) if @params[:country].present?
  end

end