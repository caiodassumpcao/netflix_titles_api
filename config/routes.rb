Rails.application.routes.draw do
  resources :netflix_titles, only: [:index]
  get '/netflix_titles/filter', to: 'netflix_titles#filter'
end