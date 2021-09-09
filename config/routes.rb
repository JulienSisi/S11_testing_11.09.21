Rails.application.routes.draw do

  resources :events
  devise_for :admins
  resources :users
  devise_for :users
  root to: "static_pages#landing_page"
end
