Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities do
    resources :bookings, except: [:index] do
      # resources :reviews, only: [:show, :new, :create]
    end
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:show, :new, :create]
  end

  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
