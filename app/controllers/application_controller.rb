class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private

  def render_nout_found
    render json: { error: 'Not Found' }, status: :not_found
  end
end
class NetflixTitlesController < ApplicationController

end

