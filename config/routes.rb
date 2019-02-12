Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount SlashAdmin::Engine => '/'
  namespace :slash_admin, path: 'admin' do
    scope module: 'models' do
      resources :circuits
      resources :constructors
      resources :drivers
    end
  end

  root 'site#home'
  get '/circuits/:code', to: 'circuits#show', as: 'show_circuit'
end
