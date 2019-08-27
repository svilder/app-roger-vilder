Rails.application.routes.draw do
  devise_for :users

  resources :pieces, only: [:new, :create]

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    get 'contact', to: 'pages#contact', as: :contact

    resources :pieces, only: [:index]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
