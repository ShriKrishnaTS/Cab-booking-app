Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'cab#index'
   resources :cab, only: [:index]
   resources :ride, only: [:create] do
    member do
      put 'start_ride'
    end
  end

end
