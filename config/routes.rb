Rails.application.routes.draw do
  # get 'urls/create'

  # get 'urls/index'

  # get 'url/create'

  # get 'url/index'

  # root 'urls#index'
  resources :urls, only: [:index, :new, :create]
end
