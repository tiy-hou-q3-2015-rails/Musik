Rails.application.routes.draw do

  get '/sign_up' => 'users#new', as: :sign_up
  post '/sign_up'=> 'users#create', as: :users
  root 'users#profile'

  mount Payola::Engine => '/payola', as: :payola

  get 'users/new'

  get 'users/:id/profile' => 'users#profile'

  get '/sign_in' => 'sessions#new', as: :sign_in
  post '/sign_in' => 'sessions#create'
  delete '/sign_out' => 'sessions#delete', as: :sign_out

  resources :subscriptions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


end
