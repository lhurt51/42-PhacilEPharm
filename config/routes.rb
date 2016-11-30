Rails.application.routes.draw do
  resources :perscriptions
  resources :doctors
  resources :pharmacies
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome' => 'home#index'
end
