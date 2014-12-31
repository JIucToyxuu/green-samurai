Rails.application.routes.draw do

	devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
	resources :feedbacks, :user

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	# root 'welcome#index'
	root 'pages#index'

	get 'about' => 'pages#about'
	get 'contacts' => 'pages#contacts'
	get 'inner' => 'pages#inner'
	get 'kak_eto_rabotaet' => 'pages#kak-eto-rabotaet'
	get 'kurs' => 'pages#kurs'
	get 'kurs_forum' => 'pages#kurs_forum'
	get 'kurs_forum_new_post' => 'pages#kurs_forum_new_post'
	get 'kurs_forum_tema' => 'pages#kurs_forum_tema'
	get 'kurs_forum_user' => 'pages#kurs_forum_user'
	get 'kurs_lekcii' => 'pages#kurs_lekcii'
	get 'kurs_o_kurse' => 'pages#kurs_o kurse'
	get 'kurs_uch_plan' => 'pages#kurs_uch-plan'
	get 'kurs_uspevaemost' => 'pages#kurs_uspevaemost'
	get 'news' => 'pages#news'
	get 'news_new' => 'pages#news'
	get 'pedagogika' => 'pages#pedagogika'
	get 'license' => 'pages#license'
	get 'confidentiality' => 'pages#confidentiality'
	get 'questions' => 'pages#questions'
	get 'university' => 'pages#university'
	get 'universities' => 'pages#universities'

	get 'confirm_twitter_email' => 'twitter_confirmation#confirm_twitter_email'
	post 'send_confirm' => 'twitter_confirmation#send_confirm'
	get 'create_identity' => 'twitter_confirmation#create_identity'
	get 'profile' => 'user#profile'
	post 'update' => 'user#update'
	

	# %w(name password email primaty_language).each do |state|
	#   match "user/#{state}", :to => "user##{state}", :as => state, :state => state, :via => [:get]
	# end


	# Example of regular route:
	#   get 'products/:id' => 'catalog#view'

	# Example of named route that can be invoked with purchase_url(id: product.id)
	#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

	# Example resource route (maps HTTP verbs to controller actions automatically):
	#   resources :products

	# Example resource route with options:
	#   resources :products do
	#     member do
	#       get 'short'
	#       post 'toggle'
	#     end
	#
	#     collection do
	#       get 'sold'
	#     end
	#   end

	# Example resource route with sub-resources:
	#   resources :products do
	#     resources :comments, :sales
	#     resource :seller
	#   end

	# Example resource route with more complex sub-resources:
	#   resources :products do
	#     resources :comments
	#     resources :sales do
	#       get 'recent', on: :collection
	#     end
	#   end

	# Example resource route with concerns:
	#   concern :toggleable do
	#     post 'toggle'
	#   end
	#   resources :posts, concerns: :toggleable
	#   resources :photos, concerns: :toggleable

	# Example resource route within a namespace:
	#   namespace :admin do
	#     # Directs /admin/products/* to Admin::ProductsController
	#     # (app/controllers/admin/products_controller.rb)
	#     resources :products
	#   end
end
