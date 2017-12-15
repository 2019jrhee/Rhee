Rails.application.routes.draw do
  get 'ask', to:'weather#ask'

  get 'show', to:'weather#show'

  root 'pages#home'

  get 'pages/about'

  get 'pages/aspiration'

  get 'pages/projects'

  get 'pages/media'

  get 'pages/contact'

  resources :blogs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
