Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/list'
  root 'pages#index'

  get '/list', to:'pages#list'

  resources :netflix_titles, only: [:index, :show] do
    collection do
      get 'filter'
    end
  end
end