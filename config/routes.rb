Rails.application.routes.draw do

  resources :events
  
  devise_for :admins
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
end

  root to: "static_pages#landing_page"
  resources :users
end
