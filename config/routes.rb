Rails.application.routes.draw do
    resources :articles
  	devise_for :users 	
	root "articles#new"

	resources :articles do
		collection do
			post :add_new_comment
		end
	end
	  # match "/posts/add_new_comment" => "posts#add_new_comment", :as => "add_new_comment_to_posts", :via => [:article]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
