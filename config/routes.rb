Rails.application.routes.draw do
  namespace :v1, default: { format: 'json' } do
    get 'things', to: 'things#index'
  end
  #Forward all requests to StaticController#index except Ajax requests and HTML Mime type
  #does not include root path
  get '*page', to: 'static#index', constraints: ->(req) do
  !req.xhr? && req.format.html?
end
#forward root requests to StaticController#index
root 'static#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
