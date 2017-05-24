Rails.application.routes.draw do
  resources :element_attributes
  resources :attributes
  resources :roles
  resources :form_elements
  resources :forms
  resources :projects
  resources :users
  resources :elements do
    collection do
      get 'elemall'
    end
  end
  get '/', to: 'main#index', via: 'get'
  get '/user', to: 'users#index', via: 'get'
  get '/project', to: 'projects#index', via: 'get'
  get '/form', to: 'forms#index', via: 'get'
  get '/element', to: 'elements#index', via: 'get'
  get '/formelement', to: 'form_elements#index', via: 'get'
  get '/role', to: 'roles#index', via: 'get'
  resources :element, :articles
end
