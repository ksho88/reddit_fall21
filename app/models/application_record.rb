class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
 # root
 root 'subs#index'
 # get 'sub#new'
 # http verb 'controller#action'
 # post 'subs#create'

 # resources 
 resources :subs

 # to access it would be localhost:3000/rails/info/routes, with your server running
end