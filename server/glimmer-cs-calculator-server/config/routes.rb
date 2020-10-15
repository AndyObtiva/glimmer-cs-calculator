Rails.application.routes.draw do
  resources :welcomes do
    collection do
      get 'tiles'
      get 'apple'
    end  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcomes#index'
end
