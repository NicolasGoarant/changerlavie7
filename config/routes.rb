Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :libraries do
    resources :articles
  end
  resources :newspapers
  resources :articles

  namespace :admin do
    root to: 'articles#index'
    resources :articles
    resources :libraries, only: [:index, :show, :create]
  end
end
