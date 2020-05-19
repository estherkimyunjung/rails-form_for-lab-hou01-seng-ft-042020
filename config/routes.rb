Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :school_classes, only:[:new, :create, :show, :edit, :update]
  resources :students, only:[:new, :create, :show, :edit, :update]
  
  # get '/school_classes', to: 'school_classes#index'
  # get '/school_classes/new', to: 'school_classes#new'
  # get '/school_classes/:id', to: 'school_classes#show', as:'school_class'
  # post '/school_classes', to: 'school_classes#create'
  # get '/school_classes/:id/edit', to: 'school_classes#edit'
  # patch '/school_classes/:id', to: 'school_classes#update'
  resources :school_classes, except: [:destroy, :index]
  
end  
