Rails.application.routes.draw do
  resources :albums

  get 'search', to: 'search#search'
end
