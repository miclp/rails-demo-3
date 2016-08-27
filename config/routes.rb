Rails.application.routes.draw do
  resources :manager_stores
  resources :stores
  resources :managers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
