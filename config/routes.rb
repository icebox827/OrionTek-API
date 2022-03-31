Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1, default: { format: :json} do
      resources :companies, only: %i[show create update]
      resources :clients, only: %i[index show create update destroy] do
        resources :addresses, only: %i[index show create update destroy]
      end
    end
  end
end
