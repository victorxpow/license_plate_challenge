Rails.application.routes.draw do
  get 'license_plates/index'
  root "license_plates#index"

  resources :license_plates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
