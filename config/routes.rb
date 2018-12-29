# Check out https://guides.rubyonrails.org/routing.html for details on CRUD and RESTful routes
Rails.application.routes.draw do
    root to: "pages#home"
    get 'about', to: "pages#about"
    resources :contacts
end