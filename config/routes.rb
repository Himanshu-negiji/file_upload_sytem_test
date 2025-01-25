Rails.application.routes.draw do
  devise_for :users
  resources :file_uploads, only: [:index, :new, :create, :destroy] do
    member do
      post :share
    end
  end
  root "file_uploads#index"
end
