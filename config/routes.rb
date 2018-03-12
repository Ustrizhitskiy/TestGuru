Rails.application.routes.draw do
  get 'about/author', to: 'about_project#author', as: 'author'
  get 'about', to: 'about_project#about', as: 'about'

  root 'about_project#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
