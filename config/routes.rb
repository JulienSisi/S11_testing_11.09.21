Rails.application.routes.draw do

  get 'static_pages/landing_page'
  devise_for :admins
  devise_for :users
 # root to: "home#index"
  
  namespace :partners_office do
    devise_for :partners, controllers: {
      sessions: 'partners_office/partners/sessions',
      registrations: 'partners_office/partners/registrations',
      confirmations: 'partners_office/partners/confirmations',
      passwords: 'partners_office/partners/passwords'
    }
    resources :partners, only: :index 
  end
  root to: 'static_pages#landing_page'
end
