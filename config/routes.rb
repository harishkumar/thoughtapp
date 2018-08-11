Rails.application.routes.draw do
  get 'fileupload/index'
  resources :orgs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
