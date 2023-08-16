Rails.application.routes.draw do
  get 'restaurants/index'
  resources :restaurants do
  end
end
