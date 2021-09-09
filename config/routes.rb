Rails.application.routes.draw do

  root to: 'static_pages#landing_page'
  devise_for :admins
  devise_for :users
  
  namespace :partners_office do
    devise_for :partners, controllers: {
      sessions: 'partners_office/partners/sessions',
      registrations: 'partners_office/partners/registrations',
      confirmations: 'partners_office/partners/confirmations',
      passwords: 'partners_office/partners/passwords',
      unlocks: 'partners_office/partners/unlocks'
    }
    resources :partners, only: :index
    get '/dashboard', to: 'static_pages#dashboard'
    get '/partner_profile', to: 'static_pages#partner_profile'
  end

end
