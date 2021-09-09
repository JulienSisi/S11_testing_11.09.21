Rails.application.routes.draw do

  resources :events
  
  devise_for :admins
  devise_for :users
<<<<<<< HEAD
  devise_scope :user do     get '/users/sign_out' => 'devise/sessions#destroy'
=======
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

>>>>>>> Developp
  root to: "static_pages#landing_page"
  resources :users
  end
end
