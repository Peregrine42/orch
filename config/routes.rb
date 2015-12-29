Rails.application.routes.draw do
  root "welcome#index"
  constraints :format => "json" do
    resources :instruments, only: [:index, :show, :create, :destroy, :update]
  end
end
