WithCms::Engine.routes.draw do
  root 'settings#index'
  resources :sections do
    collection do
      put :sort
    end
  end
  resources :options
end
