Rails.application.routes.draw do
  resources :comppras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'comppras#index'
end
