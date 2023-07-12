Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'books/new'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: 'update_book'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
