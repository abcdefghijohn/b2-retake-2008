Rails.application.routes.draw do
  resources :flights, only: %i[show]

  resources :passengers, only: %i[show]
end
