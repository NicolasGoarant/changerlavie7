Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  devise_for :users
  root to: 'libraries#create_library'
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
