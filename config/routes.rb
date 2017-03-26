WithCms::Engine.routes.draw do
	root 'settings#index'
	resources :sections
	resources :options
end
