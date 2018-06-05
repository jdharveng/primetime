Rails.application.routes.draw do
  get 'activities/index'
  get 'activities/show'
  get 'activities/new'
  get 'activities/create'
  get 'activities/edit'
  get 'activities/update'
  get 'activities/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :filters, to: 'activities#filters'
  get :filter_time, to: 'activities#filter_time'
  get :filter_money, to: 'activities#filter_money'
end
