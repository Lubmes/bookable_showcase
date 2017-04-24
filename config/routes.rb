Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    member do get :make_reservation end
  end
  devise_for :users

end
