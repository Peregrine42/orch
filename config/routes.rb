Rails.application.routes.draw do
  root "welcome#index"
  constraints :format => "json" do
    resources :instruments, only: [:create, :index, :show, :update, :destroy]
  end
end
