Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  devise_for :users
  root to: 'newspapers#index'
  resources :libraries do
      resources :articles
    end

  resources :newspapers
  resources :articles

  namespace :admin do
    root to: 'articles#index'
    resources :articles
    resources :libraries, only: [:index, :show, :create, :update]
  end
end
