Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "oauth/sessions",
    registrations: "oauth/registrations"
  }
  get "oauth/me" => "oauth/users#me"
  resources :users
  use_doorkeeper
  root "pages#home"
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
