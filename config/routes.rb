Rails.application.routes.draw do

  get 'gallery/home_gallery'
  devise_for :admins
  devise_for :users
 # root to: "home#index"

end
