Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  devise_for :users
  root to: 'newspapers#index'
  resources :libraries do
      resources :articles
  end

  resources :newspapers
  resources :archives, only: [:show]
  resources :articles do
      resources :articles_libraries, only: [:create, :destroy]
  end


  namespace :admin do
    root to: 'articles#index'
    resources :articles do
       resources :libraries, only: [:index, :show, :create, :update]
    end
  end
end
