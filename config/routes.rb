Rails.application.routes.draw do
  root to: 'pages#home'
  #get 'contacts/new'
  get 'about', to: 'pages#about'
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  resources :contacts, only: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
