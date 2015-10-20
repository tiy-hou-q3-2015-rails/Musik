Rails.application.routes.draw do

  mount Payola::Engine => '/payola', as: :payola

  get 'users/new'

  get 'users/:id/profile' => 'users#profile'

  get '/sign_in' => 'sessions#new', as: :sign_in
  post '/sign_in' => 'sessions#create'
  delete '/sign_out' => 'sessions#delete', as: :sign_out

  resources :subscriptions
  get 'subscriptions/new' => 'subscriptions#new', as: :new_subscription
  post 'subscriptions' => 'subscriptions#create', as: :subscriptions


end
