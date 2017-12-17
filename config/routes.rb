Rails.application.routes.draw do
  resources :cab, only: [:index]
  root 'cab#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ride, only: [:create] do
    member do
      put 'start_ride'
      put 'end_ride'
      get 'fare'
    end
  end

end