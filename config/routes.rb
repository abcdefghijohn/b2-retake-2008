Rails.application.routes.draw do
  resources :flights, only: %i[show]

  resources :passengers, only: %i[show] do
    resources :flights, only: %i[new create]
  end
end
