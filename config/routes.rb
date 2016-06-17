Rails.application.routes.draw do
  # 
  devise_for :users, :controllers => {:registrations => "registrations"}#, :skip => [:registrations]
  

  resources :users

	post "/add_as_friend" => "users#add_as_friend"
	get "/show_my_friends" => "users#show_my_friends"


  root to: "home#index"

end
