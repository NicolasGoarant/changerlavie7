Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :libraries
  resources :newspapers do
    resources :articles
  end

  namespace :admin do
    resources :libraries, only: [:index, :show, :create] do
      resources :articles
    end
  end
end
