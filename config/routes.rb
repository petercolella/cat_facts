Rails.application.routes.draw do
  get '/facts' => 'facts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'facts#index'
end
