Rails.application.routes.draw do
  resources :companies
  resources :bills


  root "bills#index"
end
