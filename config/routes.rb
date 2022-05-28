Rails.application.routes.draw do
  resources :detalles
  resources :multa
  resources :prestamos
  resources :usuarios
  resources :libros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'consulta/index'
  post 'consulta/buscar'
  get 'prestamos/consulta'
  root to: 'main#index'
end
