Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :peopleIfollow, to: 'users#peopleIfollow'
  resources :users, only: [:show]
  resources :activities do
    resources :bookings, except: [:index] do
      # resources :reviews, only: [:show, :new, :create]
    end
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:show, :new, :create]
    resources :payments, only: [:new, :create]
    member do
      get :bookingtimer
    end
  end

  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :filters, to: 'activities#filters'
  get :filter_time, to: 'activities#filter_time'
  get :filter_money, to: 'activities#filter_money'

  get :myactivities, to: 'activities#myactivities'
  get :mybookings, to: 'bookings#mybookings'

  # get "activitytimer/:id", to: 'activities#activitytimer', as: :activitytimer
  # get "bookingtimer/:id", to: 'bookings#bookingtimer', as: :activitytimer


  resources :follows
end
