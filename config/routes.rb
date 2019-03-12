Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :categories
    resources :bookings
    resources :students
    root to: "products#index"
  end
  resources :bookings, only: %i(show index create new)
  root to: "bookings#new"
end
