Rails.application.routes.draw do
  resources :questions
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :advertisements
  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
