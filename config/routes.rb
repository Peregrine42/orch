Rails.application.routes.draw do
  resources :instruments, only: [:index, :show, :create, :destroy, :update]
end
