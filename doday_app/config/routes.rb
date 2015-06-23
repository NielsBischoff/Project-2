Rails.application.routes.draw do


  # config/routes.rb
resources :users do
  resources :goals
end
#  get "user/goals" => "user/goals#index"
  #resources :sessions
  # get "users" => "users#index"
  # get "users/new" => "users#new"
  # post "users" => "users#create"
  #
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
#sets users to localhost3000
  root "users#index"
  resources :users
  resources :tasks

  #root 'posts#index'

  #get "users" => "users#index"

  # # Example of regular route:
  # #   get 'products/:id' => 'catalog#view', as: :product

# #   users GET    /users    =>      users#index
#     get "users" => "users#index"
#     post "users" => "users#create"
# #         POST   /users          users#create
#     get "users/new" => "users#new", as: :new_user
# # new_user GET    /users/new(.:format)      users#new
#     get "users/" => "users#edit", as: :edit_user
# # edit_user GET    /users/:id/edit(.:format) users#edit
#     get "user" => "users#show", as: :user
# #    user GET    /users/:id(.:format)      users#show
#
#     patch "users" => ""
#         PATCH  /users/:id(.:format)      users#update
#         PUT    /users/:id(.:format)      users#update
#         DELETE /users/:id(.:format)      users#destroy
#   tasks GET    /tasks(.:format)          tasks#index
#         POST   /tasks(.:format)          tasks#create
# new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#    task GET    /tasks/:id(.:format)      tasks#show
#         PATCH  /tasks/:id(.:format)      tasks#update
#         PUT    /tasks/:id(.:format)      tasks#update
#         DELETE /tasks/:id(.:format)      tasks#destroy








  # # The priority is based upon order of creation: first created -> highest priority.
  # # See how all your routes lay out with "rake routes".
  #
  # # You can have the root of your site routed with "root"
  # # root 'welcome#index'
  #

  #
  # # Example of named route that can be invoked with purchase_url(id: product.id)
  # #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #
  # # Example resource route (maps HTTP verbs to controller actions automatically):
  # #   resources :products
  #
  # # Example resource route with options:
  # #   resources :products do
  # #     member do
  # #       get 'short'
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
