Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  devise_for :users
  root to: 'libraries#create'
  resources :libraries do
      resources :articles
  end

  resources :newspapers
  resources :articles

  namespace :admin do
    root to: 'articles#index'
    resources :articles do
       resources :libraries, only: [:index, :show, :create, :update]
    end
  end
end
