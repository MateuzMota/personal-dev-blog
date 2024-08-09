Rails.application.routes.draw do
  root "articles#index"

  resource :articles
end
