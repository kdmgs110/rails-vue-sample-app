Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: "home#index"
  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
