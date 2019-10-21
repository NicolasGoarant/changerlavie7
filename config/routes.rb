Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :libraries do
    resources :articles
  end
  resources :newspapers do
    resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
