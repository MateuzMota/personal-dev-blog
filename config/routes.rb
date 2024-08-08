Rails.application.routes.draw do
  root "articles#index"

  get '/articles' => 'articles#index'
end
