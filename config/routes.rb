Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :players do
      resources :knights
    end
    resources :knights do
      resources :weapons
    end
  end

end
