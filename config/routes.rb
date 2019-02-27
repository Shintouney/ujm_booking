Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :categories
    resources :bookings
    root to: "bookings#index"
  end
  root to: "booking#new"
end
