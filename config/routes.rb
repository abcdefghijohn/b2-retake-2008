Rails.application.routes.draw do
  resources :flights, only: %i[show]
end
