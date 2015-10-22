Rails.application.routes.draw do
  root 'musik#index'
  get '/sign_up' => 'users#new', as: :sign_up
  post '/sign_up'=> 'users#create', as: :users


  mount Payola::Engine => '/payola', as: :payola

  get 'users/new'

  get 'users/:id/profile' => 'users#profile', as: :user
  get 'users/:id/profile/edit' => 'users#edit'
  patch 'users/:id/profile' => 'users#update'

  get '/sign_in' => 'sessions#new', as: :sign_in
  post '/sign_in' => 'sessions#create'
  delete '/sign_out' => 'sessions#delete', as: :sign_out

  post "/users/:id/follow" => "following#create", as: :follow_user

  post "/users/:id/stop-following" => "following#delete", as: :stop_following_user


  resources :subscriptions
  get 'confirmation/:sale_guid' => 'subscriptions#confirmation', as: :confirmation

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


end
