Rails.application.routes.draw do
  resources :staffs
  resources :responds
  resources :categories
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'home#index'

  resources :csv_services do
    collection do
      get 'export'
    end
  end
end
