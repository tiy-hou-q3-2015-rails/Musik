Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola

  get 'subscriptions/new' => 'subscriptions#new'
  post 'subscriptions' => 'subscriptions#create'
  resources :subscriptions
end
