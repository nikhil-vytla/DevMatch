# Check out https://guides.rubyonrails.org/routing.html for details on CRUD and RESTful routes
Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'about', to: "pages#about"
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end