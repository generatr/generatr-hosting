AbleHosting::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  root to: 'static_pages#home'

  resources :plans
  resources :subscriptions

end
