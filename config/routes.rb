Rails.application.routes.draw do
  devise_for :users, controllers: {
    regitrations: 'users/registrations'
  }
  resources :histories

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


