Rails.application.routes.draw do
  resources :funcionarios do
    resources :tarefas
  end
get "/", to: "home#index"
end
