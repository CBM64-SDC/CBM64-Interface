Rails.application.routes.draw do

  #get 'sub_systems/laneline_detection'

  get 'sub_systems/steering_control'

  get 'sub_systems/traffic_sign_recognition'

  get 'sub_systems/vehicle_detection'

	root 'static_pages#home'

	get		'/help',		to: 'static_pages#help'
	get		'/about',		to: 'static_pages#about'
	get		'/contact',		to: 'static_pages#contact'
	get		'/signup',		to: 'users#new'
	get		'/login',		to: 'sessions#new'
	post	'/login',		to: 'sessions#create'
	delete	'/logout',		to: 'sessions#destroy'

	get		'/laneline',	to: 'sub_systems#laneline_detection'

	get 	'/detect_laneline', 		to: 'sub_systems#detect_laneline'


	resources :users
	resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
